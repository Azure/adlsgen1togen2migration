## <img src="Assets/images/adlsmigrationreadiness.png" alt="ADLS Gen1 to Gen2 Migrations" style="float: left; margin-right:10px;" />

Azure Data Lake Storage (ADLS) Gen 1 is being replaced by Gen 2. The end of life for Gen 1 is Feb 2024 ([Retirement Announcement](https://azure.microsoft.com/en-us/updates/action-required-switch-to-azure-data-lake-storage-gen2-by-29-february-2024/). We are running a Program with the Customer Support Unit (CSU), FastTrack for Azure Team and Azure Storage Product Group to ensure our customer base can successfully migrate from ADLS Gen 1 to ADLS Gen 2 in the timeframe noted above. This readiness github repo is meant to serve as insight into the options for migrating, as well as how to complete a migration as efficiently and accurately as possible.


### Key Updates
Below you will find the latest updates on key items with ADLS Gen 1 to Gen 2 Migrations.

| Item | Description| Status|
|------|-------|-------------|
| ADLS Gen1 | Will be blocked for new customers | February 2022|
| ADLS Gen1 | Will be retired | February 2024|
| Microsoft Managed Migration Experience (M3) Tool | This is a managed tool that will automatically migrate customers data from Gen1 to the new Gen2 account. | Public Preview - July 2021|

 **NOTE: ADLA is not a platform that is currently being invested in. As a result, PG has encouraged customers to migrate to alternative platforms such as Azure Databricks. This should be considered as a seperate project and not in scope for initial Data Lake migration.**

## Mindmap(s)

[![PublicMindMap](/Assets/images/mindmapexternal.png)](https://mm.tt/2020056330?t=RavfcdPct7)

### Steps to Migrate from ADLS Gen 1 to Gen 2:
Prior to working with a customer there are three items that should be confirmed.
1. Customer does not need hands on help with migration.
2. Customer has completed an assesment of resources communicating with Gen 1.
3. Customer does not have a ADLA environment that also needs to be migrated. Currently, ADLA is not supported for ADLS Gen 2. Timeline for compatibility is end of CY21. If customer is unwilling to wait to migrate until then customer would need to choose another landing zone such as Databricks. This would require effort outside the scope of the Gen 1 to Gen 2 migration and should be considered as a seperate project or have a partner to complete.

#### 1-Assess

  * Identify motivations to upgrade
  * Inform customer about ADLS Gen2 offering and differences from Gen 1
      * [What is ADLS Gen 1?](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-overview)
      * [What is ADLS Gen 2?](https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-introduction)  
  * Understand the gaps and evaluate readiness to move

#### 2-Prepare

* Identify your data sets to migrate
  * Customers should identify what data needs to be migrated. This includes identifying what application and services are currently communicating with Gen 1.
    * If customer does not know what applications/service are communcating with the following can be used.
      1. Utilize  ADLS logs to identify what resources are communicating with Gen1
* Evaluate ADLS Gen2 for you scenarios with a PoC
* Determine the impact to your business with the migration
* Formulate your migration plan and choose your data movement tool
  * There are 5 different options for a customer to use for migration depending on the the business. 
  * These options are listed from least to most complex below:
    * [Migration Experience (M3) Tool - Public Preview](https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-migrate-gen1-to-gen2-azure-portal)
    * [Incremental Copy Migration Pattern](https://github.com/Azure/adlsgen1togen2migration/tree/main/3-Migrate/Incremental)
    * [Lift and Shift Migration Pattern](https://github.com/Azure/adlsgen1togen2migration/tree/main/3-Migrate/Lift%20and%20Shift)
    * [Dual Pipeline Migration Pattern](https://github.com/Azure/adlsgen1togen2migration/tree/main/3-Migrate/Dual%20pipeline)
    * [Bi-directional Sync Pattern (Wan Disco)](https://github.com/Azure/adlsgen1togen2migration/tree/main/3-Migrate/Bi-directional)

* Evaluate your [ADLS Migration Weekend Checklist](https://github.com/Azure/adlsgen1togen2migration/blob/main/2-Plan/ADLSMigrationWeekendChecklist.md) 

#### 3-Migrate

  * Provision your ADLS Gen2 resources.
  * Configure the ADLS Gen2 environment - VNET, ACLs, RBAC, etc.
  * Perform the data migration using one of the options provided above.
    * When migrating, if customer experiences slowness. There are a couple of factors that could be at play.
       1. Confirm that customer does not have small files. Refere to the "Hitchikers Guide to ADLS Gen2" above for best practices on file size.
       2. Verify if customer is hitting resource limits for Gen 1 or Gen 2. The following chart below provides limits for both. If customer is hitting limits, ask customer to create a support request to have limits increased for migration.
       
       | Limits | Gen1 |Gen2 |
       |------|------|------|
       | Ingress | 60 Gbps (Gigabits) | 10 Gbps (Gigabits) (In US or Europe), 5Gps for RA-GRS/GRS, 10Gbps for LRS/ZRS |
       | Egress | 120 Gbps (Gigabits) | 50 Gbps (Gigabits) |
       | Transactions Per Second | 50K |20K | 
  * Validate your scenarios on Gen2.

#### 4-Post-Migration

  * [Update Your Workloads and Applications](https://github.com/Azure/adlsgen1togen2migration/tree/main/4-Post-Migration)
  * Update analytical pipelines
  * Update your SDKs from Gen1 to Gen2
  * Validate end to end scenarios on Gen2
  * Decommission your ADLS Gen 1 Account


## Useful Resources/Links
* [ADLS Gen 2 Hitchikers Guide](https://github.com/rukmani-msft/adlsguidancedoc/blob/master/Hitchhikers_Guide_to_the_Datalake.md)
* [Cost Comparison](https://gearup.microsoft.com/resources/azure-storage?selectedassetcontainerid=ccfb58ab-66fd-4dcc-a6da-7f52b24c223f#azure-data-lake-storage)
* [Migration Deck](https://gearup.microsoft.com/resources/azure-storage?selectedassetcontainerid=8cd43bbc-f909-4a30-bb14-1f047d592725#azure-data-lake-storage)
* [Gen1 and Gen2 ACL Behavior and Differences](https://github.com/Azure/adlsgen1togen2migration/tree/main/1-Assess/ADLS%20Gen1%20and%20Gen2%20ACL%20Behavior)
* [Azure Blob Storage,Performance and ADLS Gen1 Migration Battlecard](https://github.com/Azure/adlsgen1togen2migration/tree/main/Assets/AzureBlobStorage-Performance-ADLSGen1MigrationBattlecard.pptx)
* [FAQs](https://github.com/Azure/adlsgen1togen2migration/tree/main/FAQs)



