## General Questions

**Q:**  *What was announced in February 2021?*

**A:** We are announcing the retirement of [Azure Data Lake Storage Gen1 (ADLS Gen1)](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-overview).  

##
**Q:** *Why are we retiring ADLS Gen1?*

**A:** Azure Data Lake Storage Gen1 is a service that was purpose built to serve as the storage platform for analytics workloads. In Feb 2019, we announced the general availability of Azure Data Lake Storage Gen2 (ADLS Gen2), a capability on Azure Blob Storage to support analytics workloads. ADLS Gen2 not only matches all the capabilities provided by ADLS Gen1 for analytics workloads but its also builds on the Azure Blob Storage features to make it the most comprehensive Data Lake Storage available in the Public Cloud or on-premises.  

##
**Q:** *What will happen to the data I store in ADLS Gen1?*

**A:** Customers can continue to manage their ADLS Gen1 accounts, access their data and run workloads on Gen1 until the service is retired on **Feb 29, 2024**. After **Feb 29, 2024**, **you will not be able to manage or access data on your ADLS Gen1 accounts. We strongly recommend that you migrate your data to ADLS Gen2.**

##
**Q:** *When will customers be blocked from creating ADLS Gen1 Accounts ?*

**A:** Customers will be blocked from creating new accounts **in Feb 2023**

##
**Q:** *When will the Azure Experience Portal Migration Tool go GA?*

**A:** Targeting GA by **Q2 CY2022**.

##
**Q:** *What are the benefits of migrating to ADLS Gen2?*

**A:** ADLS Gen2 not only matches all the capabilities provided by ADLS Gen1 for analytics workloads, but  it also builds on the Azure Blob Storage features to make it the most comprehensive Data Lake Storage available in the Public Cloud or on-premises.  

- Lower cost of storage compared to ADLS Gen1
- Tiered storage to manage costs
- High availability and disaster recovery capabilities
- Global availability in all Azure regions
- Automated storage lifecycle management policies

ADLS Gen2 is also integrated with all the newer Azure Analytics offerings such as Azure Synapse Analytics, along with Azure Databricks, Azure HDInsight and Azure Purview and offers a rich eco system of partner solutions.

##
**Q:** *Will my application perform as well on Azure Data Lake Storage Gen2 as it does on Azure Data Lake Storage Gen1?*

**A:** Our goal is that the application performance for Azure Data Lake Storage Gen2 will be as good or better than Azure Data Lake Storage Gen1.

##
**Q:** *What will happen after the service is retired on Feb 29, 2024?*

**A:** Customers will not be able to do the following:

- Create or manage ADLS Gen1 accounts.  
- Access the data through the Azure portal or the ADLS Gen1 APIs/SDKs/client tools
- Receive service updates to ADLS Gen1 or APIs/SDKs/Client tools  
- Receive support for issues on ADLS Gen1 (phone, email, web).

##
**Q:** *Where can customers go to learn more about migrating to ADLS Gen2?*

**A:** You can start with this [document (Migrate Azure Data Lake Storage from Gen1 to Gen2)](https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-migrate-gen1-to-gen2) to learn more about ADLS Gen1 to Gen2 migration. 

Please be advised that the migration from ADLS Gen1 to Gen2 involves data migration as well updating the applications to use Gen2. You can find more documentation on the step-by-step approach to migrating your data and applications in these [samples (Migrate Azure Data Lake Storage from Gen1 to Gen2)](https://github.com/Azure/adlsgen1togen2migration).  

##
**Q:** *Where can customers go for answers to questions?*

**A:** Customers have multiple options to get answers to questions:

- Get answers from community experts in [Microsoft Q&A](https://docs.microsoft.com/en-us/answers/topics/azure-data-lake-storage.html)  
- Email the ADLS Gen1 team at [ADLSGen1toGen2MigrationQA@service.microsoft.com](https://microsoft-my.sharepoint.com/personal/rugopala_microsoft_com/Documents/ADLS/Gen1%20Retirement/ADLSGen1toGen2MigrationQA@service.microsoft.com)  
- If you have a support plan and require technical support, please contact us.  

1. Under Issue type, select Technical.
2. Under Subscription, select your subscription.
3. Under Service, click My services, then Data Lake Storage Gen1
4. Under Summary, type a description of your issue.
5. Under Problem type, Troubleshoot configuration issue
6. Under Problem subtype, My issue is not listed

![image](https://github.com/Azure/adlsgen1togen2migration/blob/main/Assets/images/supportrequest.PNG)

---

### Seller and Field Questions

**Q:** *When will the Azure Experience Portal Migration Tool go GA?*

**A:** ADLS Gen2 is a mature service offering which has been Generally Available for over two years with a strong customer adoption. Data lakes are a foundational component of a customer’s data analytics investments on Azure enabling a rich set of diverse scenarios with various analytics tools, such as Azure Synapse Analytics, Azure HDInsight, Azure Databricks to name a few. We are announcing the retirement of ADLS Gen1 so that customers can plan their move off a platform that we are not actively investing into a more mature offering on Azure with richer capabilities.

##
**Q:** *What is the opportunity associated with ADLS Gen1 to Gen2 migration?*

**A:** Azure Data Lake Storage Gen2 is the foundational component for all Analytics services in Azure, including Azure Synapse Analytics, Azure HDInsight, Azure Databricks to name a few. By migrating their analytics storage from ADLS Gen1 to ADLS Gen2, we improve customer satisfaction and we can create synergies with field motions around Azure Analytics and build a healthy pipeline for our Analytics products.

##
**Q:** *What resources can I point to my customer to help them migrate?*

**A:** You can start with this [document](https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-migrate-gen1-to-gen2) to learn more about ADLS Gen1 to Gen2 migration.

Please be advised that the migration from ADLS Gen1 to Gen2 involves data migration as well updating the applications to use Gen2. You can find more documentation on the step-by-step approach to migrating your data and applications in these [samples](https://github.com/Azure/adlsgen1togen2migration).  

##
**Q:** *How long does it take for my customer to migrate from ADLS Gen1 to ADLS Gen2?*

**A:** The amount of time it takes for your customer to migrate from ADLS Gen1 to ADLS Gen2 depends on the amount of data they have and the complexity of their analytics pipeline. We advise that customers first assess their Gen1 usage to identify the data sets they have, and the applications or compute workloads that interface with ADLS Gen1, this effort would take a few weeks. The customers would then formulate a migration plan (we have a few patterns called out in the article [here](https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-migrate-gen1-to-gen2#gen1-to-gen2-patterns)). The key takeaway here is that it is strongly advisable to start the migration planning as soon as possible.

##
**Q:** *What help can Microsoft provide?*

**A:** We are committed to ensuring that our customers have the right level of support and guidance for migrating to ADLS Gen2. We have internal resources from CSU, CXP and ADLS product team to help with any extra support. We may be able to provide funding for SI's to do the migration for the customer and we will need to evaluate this on a case by case basis due to limited funding. This will only be applicable for large strategic customers (with 100s of TBs of data, for e.g.) with significant ACR impact. For customers who don't qualify for the funding, we will provide other support for migration using our CSU resources, we are finalizing these details and will have more information available in March 2021. Please fill [this form](https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbR4SeyCfCfrtBlHWFupvoz_BUQlVLN0tFN0RZVFNBRjhYWkJDNFhKNU82WC4u) with some information about the customer situation, depending on your input in the form, we will work with you to suggest the right option for you.  
 
##
**Q:** *How do you characterize a complex situation for migration?*

**A:** Some of the characteristics of complexity include, but are not limited to the following:

- The customer has hundreds of TBs of data in their ADLS Gen1 data lake and moving this data to ADLS Gen2 is complicated
- Customer has hundreds of analytics pipelines running and the migration of these pipelines is complicated and risky.
- Customer is a strategic customer with a very large commit (>$50 million) and indicate a churn risk.
- They have already tried a migration and have difficulty migrating. They have a poor experience causing heavy DSAT.

Reach out to us (via [the form](https://forms.office.com/r/rvXHHjJhIe), [Office Hours](https://microsoft.sharepoint.com/:u:/t/AzureStorage/ERacpbrEcqxClD-4s1OD2XgBW_ICiiqns8l4SPyj1hZhyw?e=7aD8bs) or [contact us](mailto:ADLSGen1toGen2MigrationQA@service.microsoft.com) if you run into any complexities.  

##
**Question:** *My customer uses Azure Data Lake Analytics. How should I guide this customer?*

**Answer:** Azure Data Lake Analytics (ADLA) is currently not supported on Gen2 and is also going to be eventually retired. We encourage our customers to consider migrating off ADLA to other Azure analytics services, e.g.: Azure Synapse Analytics. Meanwhile, we are working on a roadmap to support ADLA on Gen2 to extend the customers’ analytics service migration cycle, please contact [ADLSGen1toGen2MigrationQA@service.microsoft.com](mailto:ADLSGen1toGen2MigrationQA@service.microsoft.com) if you would like to learn more.

##
**Q:** *How do I discuss the migration with my customer?*

**A:** We have made the necessary information available in [Gearup](https://aka.ms/gen1gen2gearup), including a deck you can use for your customer conversations and a cost comparison calculator.  

##
**Q:** *Can I contact the ADLS Gen1 team for help with my customers?*

**A:** Yes. You can contact the ADLS Gen1 migration team that consists of members of the ADLS Gen1 product team, CSU and Fast Track. We will help answer questions via  

- [Office Hours](https://microsoft.sharepoint.com/:u:/t/AzureStorage/ERacpbrEcqxClD-4s1OD2XgBW_ICiiqns8l4SPyj1hZhyw?e=1OgYyh) – This will be scheduled weekly. 
- [Email us](mailto:ADLSGen1toGen2MigrationQA@service.microsoft.com)

##
**Q:** *What are the CTAs for the sellers?*

**A:** Visit the [Gearup](https://aka.ms/gen1gen2gearup) page for resources on Gen1 to Gen2 Migrations so that you can help your customers with questions.  

- Ensure that your customers understand that this is not just a migration, but an opportunity to optimize their implementation on Azure with a more recent, mature and cost-effective replacement.  
- Get educated on what will be involved in the migration and work with your CSAs on getting customers migrated to ADLS Gen2. 
- If there is a churn risk or a customer DSAT brewing, or if you have any questions, please contact us immediately - [Email us](mailto:ADLSGen1toGen2MigrationQA@service.microsoft.com) or attend our [Office Hours](https://microsoft.sharepoint.com/:u:/t/AzureStorage/ERacpbrEcqxClD-4s1OD2XgBW_ICiiqns8l4SPyj1hZhyw?e=1OgYyh).

##
**Q:** *What are the CTAs for the CSAs?*

**A:** Help your customers plan and execute their migration to ADLS Gen2. You can use our [resources](https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-migrate-gen1-to-gen2) to learn more.

- Visit the [Gearup](https://aka.ms/gen1gen2gearup) page for resources on Gen1 to Gen2 Migrations so that you can help your customers with questions.  
- Use this migration as an opportunity to optimize their architecture, modernize their workloads to using newer capabilities such as Azure Synapse Analytics, or manage costs with tiered storage and life cycle management policies.  
- If there is a churn risk or a customer DSAT brewing, or if you have any questions, please contact us immediately - [Email us](mailto:ADLSGen1toGen2MigrationQA@service.microsoft.com) or attend our [Office Hours](https://microsoft.sharepoint.com/:u:/t/AzureStorage/ERacpbrEcqxClD-4s1OD2XgBW_ICiiqns8l4SPyj1hZhyw?e=1OgYyh).

##
**Q:** *Are there are partners who can help customers with their migration to Azure Data Lake Storage Gen2?*

**A:** We have worked with various System Integrators (SIs) such as Infosys, TCS and MCS who have helped customers migrate from ADLS Gen1 to Gen2. Please [contact us](mailto:ADLSGen1toGen2MigrationQA@service.microsoft.com) if you would like introductions.

##
**Q:** *Have other customers already migrated to ADLS Gen2?*

**A:** Yes. Several large PB scale customers have already migrated and are now leveraging the benefits of the additional capabilities.

##
**Q:** *Can customers continue to create new ADLS Gen1 accounts going forward?*

**A:** Existing customers of ADLS Gen1 can continue to create new accounts until the service is retired in February 29, 2024. We will be releasing a feature in March 2021 which will prevent brand new customers from creating ADLS Gen1 accounts so that customers don’t inadvertently create accounts on a service that is on the retirement path.

---

### FastTrack for Azure questions

**Q.** *How many customers are we at FastTrack for Azure expected to assist with?*

**A:** FTA is expected to get about 100-200 customers which we will get from PG.  We will assess the customer situation and assist if they meet our criteria highlighted below.

##
**Q:** *What is the criteria for FTA to approve a nomination?*

**A:**
  1. ADLS Gen1 data > 1 TB
  2. Customer is willing to do an assessment
  3. Customer is willing to use one of the five migration tools
  4. Customer does not have an ADLA service that needs to be migrated
  5. $5000 ACR requirement is waived so as to keep the customer building on our technology.
  6. Customer is aware FTA is not hands on and has the skillset for this.
  7. Customer doesnt have other Microsoft resources to work on this (example CSA)


**Q.** *How one should tune ADF copy activities to achieve best performances?*

**A:**

In a single copy activity:
1. For parallelism, we suggest you always to put it in AUTO.
2. For DIU,  you can gradually increase it for each run. For example, you can start from 64, and then use 128 in the next time.  If the throughput is not doubled in the 2nd time, you can check the copy activity monitoring page to see where is the perf bottleneck.  (list file, read file, write files etc).  Once the bottleneck got resolved, you can further increase the DIU to 256 or use 2 copy activities running in parallel.
3. Exhaustive ADF copy activity performance guide can be found here: [Performance tuning steps](https://learn.microsoft.com/en-us/azure/data-factory/copy-activity-performance#performance-tuning-steps)

##
