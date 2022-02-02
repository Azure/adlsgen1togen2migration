## PM Readiness - ADLS Gen1 to Gen2 Migration

In February of 2021, Azure Data Lake Product Group announced deprecation of ADLS Gen 1 with retirement happening in February of 2024. Currently there are about ~4.5k Customers who are still on ADLS Gen 1. This is a guide meant to skill PMs on the tecnology at a high-level and how to effectivley scope a migration project.

| Key Contacts | Name | GitHub ID | Email |
|------|------|-----------|------|
| ADLS Service Lead | Andrés Padilla | @AndresPad  | andres.padilla@microsoft.com | 
| FTA PM Contact | Mamta Shah  | @FTMS001 | Mamta.Shah@microsoft.com |
| Engineering Enablement Contact | Nomita Paul | | nomita.paul@microsoft.com |
  Principal PG PM | Rukmani Gopalan | rukmani-msft | rugopala@microsoft.com |
  Senior PG PM | Vijay Palaniappan  |  | vijeyp@microsoft.com |

### Key Updates
Below you will find the latest on update on key items with ADLS Gen 1 to Gen 2 Migrations.

| Item | Description| Status|
|------|-------|-------------|
| ADLS Gen1 | Will be blocked for new customers | February 2022|
| ADLS Gen1 | Will be retired | February 2024|
| Microsoft Managed Migration Experience (M3) Tool | This is a managed tool that will automatically migrate customers data from Gen1 to the new Gen2 account. | Public Preview - July 2021|
| ADLA Compatibility with ADLS Gen2 | Azure Data Lake Analytics is a manged service that allows querying of Big Data for insights. Currently this is only supported for Gen1. **NOTE: ADLA is not a platform that is currently being invested in. As a result, PG has encouraged customers to migrate to alternative platforms such as Azure Databricks. This should be considered as a seperate project and not in scope for initial Data Lake migration.**| End of CY21 |

## Readiness
Architecturally ADLS Gen 1 and Gen 2 are built differently. Key differences are.

**ADLS Gen 1**
* Built as an Apache Hadoop file system to serve Hadoop workloads.
* Access control model that derives from HDFS, which in turn derives from the POSIX access control model.

**ADLS Gen 2**
* ADLS Gen 2 utlizes the same capabilities of Gen 1 however, it is built on top of Azure Blob storage. This provides: low cost, tiered storage, high availablity/disaster recovery and performance built for enteripse data analytics.
* Access control model that supports both Azure role-based access control (Azure RBAC) and POSIX-like access control lists (ACLs).
     * [What is ADLS Gen 1?](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-overview)
     * [What is ADLS Gen 2?](https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-introduction)

**Other Readiness Material**
* [Migration Webinar (Patterns, Samples, and Engagement Model)](https://msit.microsoftstream.com/video/6b19a4ff-0400-a521-1034-f1eab7c6793b)
* [Cost Comparison](https://gearup.microsoft.com/resources/azure-storage?selectedassetcontainerid=ccfb58ab-66fd-4dcc-a6da-7f52b24c223f#azure-data-lake-storage) (Customer Ready)
* [Migration Deck](https://gearup.microsoft.com/resources/azure-storage?selectedassetcontainerid=8cd43bbc-f909-4a30-bb14-1f047d592725#azure-data-lake-storage) (Customer Ready)
* [Customer FAQ](https://nam06.safelinks.protection.outlook.com/ap/w-59584e83/?url=https%3A%2F%2Fmicrosoft-my.sharepoint.com%2F%3Aw%3A%2Fp%2Frugopala%2FEY6XAx7Tp3RIvJVf-gL2PcIBsAuvtUdaTEjqqmk64jHnEw%3Fe%3Da0RUMt&data=04%7C01%7CKhendra.Reid%40microsoft.com%7C560bdd7834c9455850e708d8cdd638f3%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637485667251086898%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=QjgEV3kjf0gD0bANdbdoExd%2BU%2FYDMste8j2Aatn%2Bgnw%3D&reserved=0)

## How to effectively scope a Gen1 to Gen2 Migration:
Prior to working with a customer there are three items that should be confirmed.
1. The customer has completed an assessment of resources/applications that are communicating with ADLS Gen 1..
   * It is imperative that the customer has completed an assessment of the current environment and knows what resources are currently communicating with ADLS Gen 1 prior to engagement.
2. If the customer has an Azure Data Lake Analytics (ADLA) environment that also needs to be migrated, it will need to be evaluated separately from the ADLS Gen 1 to Gen 2 migration.  
   * ADLA is currently not supported for ADLS Gen 2, support is scheduled for later CY21. However, ADLA is not a platform that is currently being invested in and customers are encouraged to migrate to other alternatives.
   *  Migration of ADLA to alternative platforms, such as Databricks, can take extensive time and this should be considered as a separate project.
