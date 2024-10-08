# CbrainClient::MultiRegistrationModReq

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basenames** | **Array&lt;String&gt;** |  | [optional] 
**filetypes** | **Array&lt;String&gt;** | An array containing the filetypes associated with the files to register; each element must be a string containing the cbrain file type, a single dash, and then a repeat of the basename found in the basenames parameters. For example, \&quot;TextFile-abc.txt\&quot; | [optional] 
**as_user_id** | **Integer** | The ID of the user to register files as. | [optional] 
**other_group_id** | **Integer** | The ID of the project controlling access to the registered files. | [optional] 
**delete** | **BOOLEAN** | Specifies to delete the file contents. This is only used during an \&quot;unregister\&quot; action. | [optional] [default to false]


