# CbrainClient::UserfilesApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userfiles_change_provider_post**](UserfilesApi.md#userfiles_change_provider_post) | **POST** /userfiles/change_provider | Moves the Userfiles from their current Data Provider to a new one.
[**userfiles_compress_post**](UserfilesApi.md#userfiles_compress_post) | **POST** /userfiles/compress | Compresses many Userfiles each into their own GZIP archive.
[**userfiles_delete_files_delete**](UserfilesApi.md#userfiles_delete_files_delete) | **DELETE** /userfiles/delete_files | Delete several files that have been registered as Userfiles
[**userfiles_download_post**](UserfilesApi.md#userfiles_download_post) | **POST** /userfiles/download | Download several files
[**userfiles_get**](UserfilesApi.md#userfiles_get) | **GET** /userfiles | List of the Userfiles accessible to the current user.
[**userfiles_id_content_get**](UserfilesApi.md#userfiles_id_content_get) | **GET** /userfiles/{id}/content | Get the content of a Userfile
[**userfiles_id_get**](UserfilesApi.md#userfiles_id_get) | **GET** /userfiles/{id} | Get information on a Userfile.
[**userfiles_id_put**](UserfilesApi.md#userfiles_id_put) | **PUT** /userfiles/{id} | Update information on a Userfile.
[**userfiles_post**](UserfilesApi.md#userfiles_post) | **POST** /userfiles | Creates a new Userfile and upload its content.
[**userfiles_sync_multiple_post**](UserfilesApi.md#userfiles_sync_multiple_post) | **POST** /userfiles/sync_multiple | Syncs Userfiles to the local Data Providers cache.
[**userfiles_uncompress_post**](UserfilesApi.md#userfiles_uncompress_post) | **POST** /userfiles/uncompress | Uncompresses many Userfiles.


# **userfiles_change_provider_post**
> userfiles_change_provider_post(multi_userfile_mod_req)

Moves the Userfiles from their current Data Provider to a new one.

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

multi_userfile_mod_req = CbrainClient::MultiUserfilesModReq.new # MultiUserfilesModReq | The IDs of the files to move.


begin
  #Moves the Userfiles from their current Data Provider to a new one.
  api_instance.userfiles_change_provider_post(multi_userfile_mod_req)
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_change_provider_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **multi_userfile_mod_req** | [**MultiUserfilesModReq**](MultiUserfilesModReq.md)| The IDs of the files to move. | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **userfiles_compress_post**
> userfiles_compress_post(multi_userfile_mod_req)

Compresses many Userfiles each into their own GZIP archive.

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

multi_userfile_mod_req = CbrainClient::MultiUserfilesModReq.new # MultiUserfilesModReq | The IDs of the files to compress.


begin
  #Compresses many Userfiles each into their own GZIP archive.
  api_instance.userfiles_compress_post(multi_userfile_mod_req)
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_compress_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **multi_userfile_mod_req** | [**MultiUserfilesModReq**](MultiUserfilesModReq.md)| The IDs of the files to compress. | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **userfiles_delete_files_delete**
> userfiles_delete_files_delete(multi_userfile_mod_req)

Delete several files that have been registered as Userfiles

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

multi_userfile_mod_req = CbrainClient::MultiUserfilesModReq.new # MultiUserfilesModReq | The IDs of the files to destroy.


begin
  #Delete several files that have been registered as Userfiles
  api_instance.userfiles_delete_files_delete(multi_userfile_mod_req)
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_delete_files_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **multi_userfile_mod_req** | [**MultiUserfilesModReq**](MultiUserfilesModReq.md)| The IDs of the files to destroy. | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **userfiles_download_post**
> File userfiles_download_post(multi_userfile_mod_req)

Download several files

This method compresses several Userfiles in .gz format and prepares them to be downloaded.

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

multi_userfile_mod_req = CbrainClient::MultiUserfilesModReq.new # MultiUserfilesModReq | The IDs of the files to be downloaded. If more than one file is specified, they will be zipped into a gzip archive.


begin
  #Download several files
  result = api_instance.userfiles_download_post(multi_userfile_mod_req)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_download_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **multi_userfile_mod_req** | [**MultiUserfilesModReq**](MultiUserfilesModReq.md)| The IDs of the files to be downloaded. If more than one file is specified, they will be zipped into a gzip archive. | 

### Return type

**File**

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/*, text/*



# **userfiles_get**
> Array&lt;Userfile&gt; userfiles_get(opts)

List of the Userfiles accessible to the current user.

This method returns a list of Userfiles that are available to the current User. 

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

opts = { 
  page: 56, # Integer | Page number when paginating. See also the per_page parameter
  per_page: 56 # Integer | Size of each page when paginating. See also the page parameter
}

begin
  #List of the Userfiles accessible to the current user.
  result = api_instance.userfiles_get(opts)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number when paginating. See also the per_page parameter | [optional] 
 **per_page** | **Integer**| Size of each page when paginating. See also the page parameter | [optional] 

### Return type

[**Array&lt;Userfile&gt;**](Userfile.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **userfiles_id_content_get**
> File userfiles_id_content_get(id)

Get the content of a Userfile

This method allows you to download the content of a userfile.

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

id = 56 # Integer | The ID number of the Userfile to download


begin
  #Get the content of a Userfile
  result = api_instance.userfiles_id_content_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_id_content_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID number of the Userfile to download | 

### Return type

**File**

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/*, text/*



# **userfiles_id_get**
> Userfile userfiles_id_get(id)

Get information on a Userfile.

This method returns information about a single Userfile, specified by its ID. Information returned includes the ID of the owner, the Group (project) it is a part of, a description, information about where the acutal copy of the file currently is, and what the status is of any synhronization operations that may have been requested. 

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

id = 56 # Integer | The ID number of the Userfile to get information on.


begin
  #Get information on a Userfile.
  result = api_instance.userfiles_id_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID number of the Userfile to get information on. | 

### Return type

[**Userfile**](Userfile.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **userfiles_id_put**
> userfiles_id_put(id, userfile_mod_req)

Update information on a Userfile.

This method allows a User to update information on a userfile. 

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

id = 789 # Integer | The ID number of the Userfile to update.

userfile_mod_req = CbrainClient::UserfileModReq.new # UserfileModReq | 


begin
  #Update information on a Userfile.
  api_instance.userfiles_id_put(id, userfile_mod_req)
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID number of the Userfile to update. | 
 **userfile_mod_req** | [**UserfileModReq**](UserfileModReq.md)|  | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **userfiles_post**
> Object userfiles_post(upload_file, data_provider_id, userfile_group_id, file_type, opts)

Creates a new Userfile and upload its content.

This method creates a new Userfile in CBRAIN, with the current user as the owner of the file. 

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

upload_file = File.new('/path/to/file.txt') # File | File content to upload to CBRAIN

data_provider_id = 56 # Integer | The ID of the Data Provider to upload the file to.

userfile_group_id = 56 # Integer | ID of the group that will have access to the Userfile

file_type = 'SingleFile' # String | The type of the file

opts = { 
  _do_extract: '_do_extract_example', # String | set to the string 'on' to indicate that the uploaded content is a tar.gz or .zip archive that need to be extracted. See also the parameter _up_ex_mode
  _up_ex_mode: '_up_ex_mode_example' # String | if '_do_extract' is set to 'on', set this to 'collection' to create a single collection, or 'multiple' to create one file per entry in the uploaded content
}

begin
  #Creates a new Userfile and upload its content.
  result = api_instance.userfiles_post(upload_file, data_provider_id, userfile_group_id, file_type, opts)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_file** | **File**| File content to upload to CBRAIN | 
 **data_provider_id** | **Integer**| The ID of the Data Provider to upload the file to. | 
 **userfile_group_id** | **Integer**| ID of the group that will have access to the Userfile | 
 **file_type** | **String**| The type of the file | [default to SingleFile]
 **_do_extract** | **String**| set to the string &#39;on&#39; to indicate that the uploaded content is a tar.gz or .zip archive that need to be extracted. See also the parameter _up_ex_mode | [optional] 
 **_up_ex_mode** | **String**| if &#39;_do_extract&#39; is set to &#39;on&#39;, set this to &#39;collection&#39; to create a single collection, or &#39;multiple&#39; to create one file per entry in the uploaded content | [optional] 

### Return type

**Object**

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/xml



# **userfiles_sync_multiple_post**
> userfiles_sync_multiple_post(multi_userfile_mod_req)

Syncs Userfiles to the local Data Providers cache.

Synchronizing files to their the local cache allows you to download, visualize and do processing on them that is not available if not synced. CBRAIN operations will sync files automatically, and this is only necessary if a file is changed on its host Data Provdier by an external process.

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

multi_userfile_mod_req = CbrainClient::MultiUserfilesModReq.new # MultiUserfilesModReq | The IDs of the files to synchronize.


begin
  #Syncs Userfiles to the local Data Providers cache.
  api_instance.userfiles_sync_multiple_post(multi_userfile_mod_req)
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_sync_multiple_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **multi_userfile_mod_req** | [**MultiUserfilesModReq**](MultiUserfilesModReq.md)| The IDs of the files to synchronize. | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **userfiles_uncompress_post**
> userfiles_uncompress_post(multi_userfile_mod_req)

Uncompresses many Userfiles.

### Example
```ruby
# load the gem
require 'cbrain_client'
# setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::UserfilesApi.new

multi_userfile_mod_req = CbrainClient::MultiUserfilesModReq.new # MultiUserfilesModReq | The IDs of the files to uncompress.


begin
  #Uncompresses many Userfiles.
  api_instance.userfiles_uncompress_post(multi_userfile_mod_req)
rescue CbrainClient::ApiError => e
  puts "Exception when calling UserfilesApi->userfiles_uncompress_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **multi_userfile_mod_req** | [**MultiUserfilesModReq**](MultiUserfilesModReq.md)| The IDs of the files to uncompress. | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



