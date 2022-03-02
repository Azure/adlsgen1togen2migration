#Script to invoke the full load Migration and Validation process to compare the data between Gen1 and Gen2 post migration and generate summary report.

#1. Create Your Data Factory instance and the underlying LinkedServices, Datasets, Pipelines and Triggers
$fullConfigRootPath = $PSScriptRoot + "\Configuration\FullLoadConfig.json"
$inputConfigData = Get-Content -Raw -Path $fullConfigRootPath | ConvertFrom-Json

& "$PSScriptRoot\Migration\PipelineConfig.ps1" -inputConfigFilePath $fullConfigRootPath

$pipelineRunIds = & "$PSScriptRoot\Migration\DataFactory.ps1" -inputConfigFilePath $fullConfigRootPath
$validationPipeline = @{}

#2. Trigger the Pipeline and copy your ADLS Gen1 Account/Folders to ADLS Gen2 Account destination path
while ($true) {

     foreach($item in $pipelineRunIds.GetEnumerator())
     {
         $run = Get-AzDataFactoryV2PipelineRun -ResourceGroupName $inputConfigData.resourceGroupName -DataFactoryName $inputConfigData.factoryName -PipelineRunId $item.Value

        if ($run) {
            if ($run.Status -ne 'InProgress') {
                $msg = "Pipeline runid "+$item.Value +" finished. The status is: "+ $run.Status

                if($run.Status -eq 'Succeeded')
                {
                    $validationPipeline.Add($item.Key,$item.Value)
                    Write-Host $msg -foregroundcolor "Green"
                }
                else
                {
                    Write-Host $msg -foregroundcolor "Red"
                }

                $pipelineRunIds.Remove($item.Key)
                break
            }
            $msg = "Pipeline runId "+$item.Value+" is running...status: InProgress"
            Write-Host $msg -foregroundcolor "Yellow"
        }
     }
     if($pipelineRunIds.Count -eq 0)
     {
         break
     }
     Start-Sleep -Seconds 15
 }

#3. Validate that data was successfully copied over
 & "$PSScriptRoot\Validation\InvokeValidation.ps1" -inputConfigFilePath $fullConfigRootPath -pipelineIds $validationPipeline