# CbrainClient::CbrainTask

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique identifier for the Task. | [optional] 
**type** | **String** | The task type | [optional] 
**user_id** | **Integer** | ID of the User who created the Task. | [optional] 
**group_id** | **Integer** | ID of the group that this task is being run in. | [optional] 
**bourreau_id** | **Integer** | ID of the Bourreau the Task was launched on. | [optional] 
**tool_config_id** | **Integer** | ID number that specifies which Tool Config to use. The Tool Config specifies environment variables and other system-specific scripts necessary for the Task to be run in the target environment. | [optional] 
**batch_id** | **Integer** | ID of the batch this task was launched as part of. Batches of tasks consist of the same task, with the same parameters, being run on many different input files. | [optional] 
**params** | **Object** | Parameters used as inputs to the scientific calculation associated with the task. | [optional] 
**status** | **String** | Current status of the task. | [optional] 
**created_at** | **String** | Date created. | [optional] 
**updated_at** | **String** | Last updated. | [optional] 
**run_number** | **Integer** | The number of times that this task was run. | [optional] 
**results_data_provider_id** | **Integer** | ID of the Data Provider that contains the Userfile that represents the results of the task. | [optional] 
**cluster_workdir_size** | **Integer** | size of workdirectory | [optional] 
**workdir_archived** | **String** | Boolean variable that indicates whether the working directory of the task is available on the processing server or has been archived and is no longer accessible. | [optional] 
**workdir_archive_userfile_id** | **Integer** | ID of the userfile created as part of the archival process, if the working directory of the task has been archived. | [optional] 
**description** | **String** | Description of the Task. | [optional] 


