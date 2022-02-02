
## <img src="../Assets/images/brainstormicon5.png" alt="ADLS Migration Weekend Checklist" style="float: left; margin-right: 10px;" width="45px" />ADLS Migration Weekend Checklist

Below is a high-level checklist that will help clients juggle the numerous items and activities during their Migration Weekend, and guide them towards their final cut over into an Azure ADLS Gen2 Account.

(Please note that this list is not all encompassing, and items are in no particular order.)


<table>
  <tr>
    <td></td>
    <td><b>Task</b></td>
    <td><b>Description</b></td>
  </tr>
  <tr>
    <td colspan="3"><b>Thursday before Migration Weekend – Did you Practice?</b></td>
  </tr>
  <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">The Hitchhiker's Guide to the Data Lake</td>
    <td style="vertical-align: top;">Did you read the <a href="https://github.com/rukmani-msft/adlsguidancedoc/blob/master/Hitchhikers_Guide_to_the_Datalake.md" target="_blank"><i>Hitchhiker's Guide to the Data Lake</i></a>?</td>
  </tr>
  <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Inventory: File and Folder Counts</td>
    <td>Did you take note of all the File Counts and Folder Counts, etc. and make sure you have the expected counts from your ADLS Gen1 Account? <br /><br /><a href="https://github.com/Azure/adlsgen1togen2migration/tree/main/3-Migrate/Utilities/Ageing%20Analysis" target="_blank">Ageing Analysis Guide: A quick start template</a></td>
  </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Azure Data Factory</td>
    <td>Did you analyze the different ADF migration Pipelines and actually work with them and test the one that fits your scenario best?</td>
  </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Initial Pre-Migration Test</td>
    <td>Did you complete an initial pre-migration? Were you able to get a sample set of your files, folders, and ACLs over into a Test ADLS Gen2 environment? </td>
  </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Analyze your Migration Window length</td>
    <td>Did you analyze how long it would take you to migrate all your data and re-configure anything on the application side? Did you analyze if you will be doing a phased migration, or will you be doing a migration in one shot?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Fix Blocking items</td>
    <td>Did you fix all the blocking items if applicable?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Enabling Azure Portal Experience Button</td>
    <td>Did you contact the PG with the applicable Subscription ID(s) and Account Name(s) so they can enable the M3 Azure Migration Experience in the Portal?
    <br /><br /><a href="https://aka.ms/g1g2portalmigration" target="_blank">Migrate Azure Data Lake Storage from Gen1 to Gen2 by using the Azure portal (preview)</a>
    <br /><br /><a href="https://aka.ms/g1g2portalmigrationsignup" target="_blank">Azure Data Lake Storage Gen1 to Gen2 Migration on the portal - Public Preview Signup</a>
</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Remove Throttling</td>
    <td>Did you contact the PG with the applicable Subscription ID(s) and Account Name(s) so they can coordinate the window for removing the throttles/meters on the ADLS Gen2 Account?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Azure Security Center</td>
    <td>Did you set up Azure Security Center?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Azure Storage Defender</td>
    <td>Did you set up Azure Defender for Storage?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Applications</td>
    <td>Did you take note of all the applications that need to connect to the migrated target ADLS Gen2 Account? Did you test the applications and see if they can connect to the new ADLS Gen2 Account?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Driver Compatibility</td>
    <td>Are all application drivers compatible with all ADLS Gen2 features? </td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Application CRUD</td>
    <td>Can your applications Read, Write, Update, Delete to the new ADLS Gen2?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">RBAC & ACLs (Hierarchical Security)</td>
    <td>
Are permissions and authorization being evaluated correctly?<br />

Data Lake Storage Gen2 supports the following authorization mechanisms:

*	Shared Key authorization
*	Shared access signature (SAS) authorization
*	Role-based access control (Azure RBAC)
*	Access control lists (ACL)

<a href="https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-access-control-model" target="_blank">Access control model in Azure Data Lake Storage Gen2</a>
 </td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Application Security</td>
    <td>Do your applications work as expected while connecting with different users and with different security permissions?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Sensitive Data</td>
    <td>Are you able to test and validate the protection of sensitive data from unauthorized users?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Other External Systems</td>
    <td>Are there other systems involved? Do you have any 3rd party tools accessing the data?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Test Plans</td>
    <td>Are test plans developed to ensure that the application(s) function(s) in the most efficient manner, users are satisfied with the end results, and the migrated application supports the business processes of the organization?
    Do you have Functional, Integration, Performance, Volume and Stress Tests ready to go? Have you Tested your Test plans?
    </td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Performance Plan</td>
    <td>Do you have a performance and optimization plan in place? Do you know how to handle Throttling or Retry Logic? Were you able to run and get initial  performance metrics from your target ADLS Gen2 in Azure? </td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Life Cycle Management</td>
    <td>Do you have to setup <a href="https://docs.microsoft.com/en-us/azure/storage/blobs/storage-lifecycle-management-concepts" target="_blank"><i>Life Cycle Management</i></a> inside of the new ADLS Gen2 Account? </td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Data quality</td>
    <td>Are there requirements for cleansing the data, running rules against the source data or against the data once loaded into the target? Were you able to test and validate the data quality?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Get your Team Ready for the Change</td>
    <td>Did you get your team ready for the change and are they aware of how to access the ADLS Gen2 Account, any incompatibilities, and able to spot missed data or glitches? Are they aware of their roles?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Backups</td>
    <td>Do you know how backups work for ADLS Gen2, Point-In-Time Restores, and/or Redundancy? Have you been able to test the backup features? 
    <br /><br />
    <a href="https://docs.microsoft.com/en-us/azure/storage/blobs/data-protection-overview" target="_blank">Data protection overview</a>
</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Business Continuity</td>
    <td>Have you analyzed your Business Continuity Plan and how you are going to set it up? Are you aware of Azure’s redundancy, replication, and BC options? Do you know how to configure long-term retention policies or Life Cycle Management?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Well Architected Framework</td>
    <td>
     Did you cover everything from a security, optimization, reliability, and scalability standpoint?
     <br /><br />
     <a href="https://docs.microsoft.com/en-us/azure/architecture/framework/" target="_blank">Well-Architected Framework</a>
   </td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Deployment Plan</td>
    <td>
Are you aware of the variety of techniques to deploy new applications/storage? Have you analyzed the deployment strategy and weighed the options in terms of the impact of change on the system?

* <b>Recreate:</b> Version A is terminated then version B is rolled out.<br/>
* <b>Ramped (also known as rolling-update or incremental):</b> Version B is slowly rolled out and replacing version A.
* <b>Blue/Green:</b> Version B is released alongside version A, then the traffic is switched to version B.
* <b>Canary:</b> Version B is released to a subset of users, then proceed to a full rollout.
* <b>A/B testing:</b> Version B is released to a subset of users under specific condition.
* <b>Shadow:</b> Version B receives real-world traffic alongside version A and doesn’t impact the response.
   </td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Failback plan</td>
    <td>Do you have a failback plan in place? What will you do if you have to failback?</td>
 </tr>
 <tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Practice the “go-live”</td>
    <td>
Did you practice the migration process several times to ensure:

1.	The time window for the migration is understood.
2.	The data validation process (usually reports) works.
3.  All team members, IT, and users, know what they will do during the migration “go-live”.

  </td>
 </tr>
 <tr>
    <td colspan="3"><b>Friday night – Saturday morning - Migrate!</b></td>
</tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Lock everyone out (Did you disable logins and lock people out)</td>
    <td>Did you take away access to your users so they can’t make any changes? Did you make sure  people can’t write to the new ADLS Gen2 Account?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Start your Migration</td>
    <td>Kick off your Migration ADF Pipelines and/or processes?

    1. Migrate your folders
    2. Migrate your files
    3. Migrate your ACLs

   </td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Monitor</td>
    <td>Make sure you are monitoring the process, counts, object counts etc.</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Applications</td>
    <td>Adjust any application functionality</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Migrate Connections Strings inside of your Applications and External Systems</td>
    <td>Adjust your connections strings</td>
 </tr>
 <tr>
    <td colspan="3"><b>Saturday – Sunday! Test and Validate</b></td>
</tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Pre-migration and post migration record totals</td>
    <td>Compare your pre-migration and post migration inventory and record totals?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Data</td>
    <td>Can you connect to your ADLS Gen2 Account and see data? Is sensitive data protected? Is there any missing data?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Did you re-enable logins</td>
    <td>Can your users log back in</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Azure Data Factory Pipelines</td>
    <td>Do your Azure Data Factory Pipelines work as expected?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Reports</td>
    <td>Do your reports work as expected?</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Performance</td>
    <td>Verify that <a href="https://github.com/Azure/adlsgen1togen2migration/blob/main/1-Assess/Telemetry.md" target="_blank">performance</a> metrics are being generated.
</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Test Plans</td>
    <td>Kick off final Functional, Integration, Performance and Post Migration Tests.</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Applications</td>
    <td>Test and validate all systems for accuracy.</td>
 </tr>
<tr>
    <td style="vertical-align: top;">✔️</td>
    <td style="vertical-align: top;">Go/No Go Meeting</td>
    <td>Conduct your Go/No Go meeting</td>
 </tr>
<tr>
    <td colspan="3"><b>Sunday Night – Cut over to the new ADLS Gen2 Account!</b></td>
</tr>
</table>

