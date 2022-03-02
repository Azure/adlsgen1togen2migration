#Script to invoke the Validation process to compare the data between Gen1 and Gen2 post migration and generate summary report.

$incrementalConfigRootPath = $PSScriptRoot + "\Configuration\IncrementalLoadConfig.json"

$outerConfig = Get-Content -Raw -Path $incrementalConfigRootPath | ConvertFrom-Json

$pipelineRunIdDetails = @{}

foreach($eachPipeline in $outerConfig.pipeline)
{       
    $pipelineRunIdDetails.Add($eachPipeline.pipelineId,"")
}

& "$PSScriptRoot\Validation\InvokeValidation.ps1" -inputConfigFilePath $incrementalConfigRootPath -pipelineIds $pipelineRunIdDetails

