## Assess Your Readiness

Before you migrate your **ADLS Gen1 Account** to **ADLS Gen2** we recommend that you properly assess your knowledge, environment, data set, security and general archtiecture.
Here we'll discuss various considerations when assessing your environment for migration to ADLS Gen2. 

Remember, when it comes to migrations, often, it is not the migration itself that is the challenge. The real work begins in understanding the overall migration process, your dependancies, assessing your overall inventory, fixing any pre-migration blockers, prepping your migration window and thoroughly testing the migration before you go live. 

#### An Ounce of Prevention is Worth a Pound of Cure

| 	                             | Task                 |   Description    |
|--------------------------------|------------------------|------------------|
| ✔️ | 1. Inventory: [File and Folder Counts](https://github.com/Azure/adlsgen1togen2migration/tree/main/3-Migrate/Utilities/Ageing%20Analysis) | You should  be aware of the overall inventory of your environment. Did you take note of all the File and Folder Counts, etc. and make sure you have the expected counts from your ADLS Gen1 Account?|
| ✔️ | 2. [Understand Gen1/Gen2 ACL Behavior and Differences](https://github.com/Azure/adlsgen1togen2migration/tree/main/1-Assess/ADLS%20Gen1%20and%20Gen2%20ACL%20Behavior) | You should be aware of and understand the behavioral differences of the Access Control Models for Data Lake Storage Gen1 and Gen2.|
| ✔️ | 3. [Path to migrating your existing ADLS Gen1 Roles and applying them to ADLS Gen2 Accounts](https://github.com/Azure/adlsgen1togen2migration/tree/main/1-Assess/ADLS%20Gen1%20and%20Gen2%20RBAC%20Configuration%20Guidelines) | You should be aware of the differences between the RBAC you apply to ADLS Gen1 accounts versus Gen2 accounts; and a pathway or guidance for migrating you’re existing ADLS Gen1 RBAC roles to ADLS Gen2 accounts. |
| ✔️ | 4. [Configuring Log Analytics](https://github.com/Azure/adlsgen1togen2migration/blob/main/1-Assess/Telemetry.md) | Telemetry is an extremely important part of any solution, and is no less important at the storage layer in a cloud implementation than any other layer of the stack. Azure Log Analytics is an important part of your this solution.|

