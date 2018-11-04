# CbrainClient::FileInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userfile_id** | **Integer** | id of the userfile | [optional] 
**name** | **String** | the base filename | [optional] 
**group** | **String** | string representation of gid, the name of the group | [optional] 
**gid** | **Integer** | numeric group id of the file | [optional] 
**owner** | **String** | string representation of uid, the name of the owner | [optional] 
**uid** | **Integer** | numeric uid of owner | [optional] 
**permissions** | **Integer** | an int interpreted in octal, e.g. 0640 | [optional] 
**size** | **Integer** | size of file in bytes | [optional] 
**state_ok** | **BOOLEAN** | flag that tell whether or not it is OK to register/unregister | [optional] 
**message** | **String** | a message to give more information about the state_ok flag | [optional] 
**symbolic_type** | **String** | one of :regular, :symlink, :directory | [optional] 
**atime** | **Integer** | access time (an int, since Epoch) | [optional] 
**mtime** | **Integer** | modification time (an int, since Epoch) | [optional] 


