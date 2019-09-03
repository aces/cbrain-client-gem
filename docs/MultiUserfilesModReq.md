# CbrainClient::MultiUserfilesModReq

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_ids** | **Array&lt;String&gt;** |  | [optional] 
**data_provider_id_for_mv_cp** | **Integer** |  | [optional] 
**specified_filename** | **String** | The name of the archive file that the Userfiles will be compressed into when downloading. | [optional] 
**operation** | **String** | Used when affecting the synchronization status of files. Either \&quot;sync_local\&quot; or \&quot;all_newer\&quot;. \&quot;sync_local\&quot; will ensure that the version of the file in the CBRAIN portal cache is the most recent version that exists on the Data Provider. \&quot;all_newer\&quot; will ensure that ALL caches known to CBRAIN are updated with the most recent version of the files in the host Data Provider. | [optional] 


