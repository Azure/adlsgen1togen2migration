## <img src="../Assets/images/Asset268.png" alt="ADLS Migrations - Plan and Test" style="float: left; margin-right: 10px;" width="45px" />An Ounce of Prevention is Worth a Pound of Cure

We can't emphasis how important it is to plan out your migration. As you are planning your migration think about all the other items that need to be configured or in place before and after the data is moved. For instance, have you thought about security, all your actors, responsbilities, dependencies, activities, your migration window and maybe some of the easily forgetful items that can cause road blocks such as driver compatibility and/or python or .net core libraries.

Have you thoroughly tested your migration before you go live? 

In addtion, please consider some of the things that worked well in Gen1. What didn't? Now is a great time to plan for some of these changes to rid the project of outstanding technical debt as possible. 

To help you get started we have provided an [ADLS Migration Weekend Checklist](https://github.com/Azure/fta-adlsgen1togen2migration/blob/main/2-Plan/ADLSMigrationWeekendChecklist.md) that will help you assess what activities you need to accomplish during a *Migration Weekend*, and provided below a *"Target Architecture Definition"* that we have put together to help you think through some of these items:


|Design Consideration  |Options  |Questions  |
|---------|---------|---------|
|Location               |East US, West US, N Europe, etc                  | What region do most of your applications that are reading/writing to the data lake originate from?                         |
|Data Lake Organization  |Number of Storage Accounts, Containers, Folders | How are you structured today? Does data access distribute across multiple folders or do you access one folder more frequently? There are performance considerations for this. |
|Number of Environments  | Prod, UAT, Dev                                 | Will you have one data lake and have different environments for compute layers? Or will each environment exist on its own? |
|Number of Subscriptions |                                                | In which subscription will you deploy the ADLS Gen2 account? Will you split the environments on different subscriptions?   |
|Redundancy Settings     |LRS, ZRS, GA-ZRS                                | Is LRS (locally redundant storage) enough? Or do you need a higher level for HA/DR or compliance reasons?                  |
|Firewall                | VNet                                           | What are the vnet considerations you should consider? Can you deploy to the same vnet as Data Lake Gen1? Or do you need to create another? If another what type of impact does that have on differing compute applications?           |
|Policies                |                                                | Are there Azure Policies already enforced by the platform team? Are there policies you would like to implement at the storage account level?         |
|RBAC/ACL Strategy       |                                                | ACL's work slightly differently in ALDS Gen2. Read the ["Gen1 and Gen2 ACL Behavior readme"](https://github.com/Azure/fta-adlsgen1togen2migration/tree/main/1-Assess/ADLS%20Gen1%20and%20Gen2%20ACL%20Behavior) for an in-depth guide |