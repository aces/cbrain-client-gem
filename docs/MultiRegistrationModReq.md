# CbrainClient::MultiRegistrationModReq

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basenames** | **Array&lt;String&gt;** |  | [optional] 
**filetypes** | **Array&lt;String&gt;** | An array containing the filetypes associated with the files to register; each element must be a string containing the cbrain file type, a single dash, and then a repeat of the basename found in the basenames parameters. For example, \&quot;TextFile-abc.txt\&quot; | [optional] 
**as_user_id** | **Integer** | The ID of the user to unregister files as. | [optional] 
**delete** | **BOOLEAN** | Specifies to delete the files once when unregistering. | [optional] [default to false]


