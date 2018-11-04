# CbrainClient::DataProvidersApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**data_providers_get**](DataProvidersApi.md#data_providers_get) | **GET** /data_providers | Get a list of the Data Providers available to the current user.
[**data_providers_id_browse_get**](DataProvidersApi.md#data_providers_id_browse_get) | **GET** /data_providers/{id}/browse | List the files on a Data Provider.
[**data_providers_id_delete_post**](DataProvidersApi.md#data_providers_id_delete_post) | **POST** /data_providers/{id}/delete | Deletes unregistered files from a CBRAIN Data provider.
[**data_providers_id_get**](DataProvidersApi.md#data_providers_id_get) | **GET** /data_providers/{id} | Get information on a particular Data Provider.
[**data_providers_id_is_alive_get**](DataProvidersApi.md#data_providers_id_is_alive_get) | **GET** /data_providers/{id}/is_alive | Pings a Data Provider to check if it is running.
[**data_providers_id_register_post**](DataProvidersApi.md#data_providers_id_register_post) | **POST** /data_providers/{id}/register | Registers a file as a Userfile in CBRAIN.
[**data_providers_id_unregister_post**](DataProvidersApi.md#data_providers_id_unregister_post) | **POST** /data_providers/{id}/unregister | Unregisters files as Userfile in CBRAIN.


# **data_providers_get**
> Array&lt;DataProvider&gt; data_providers_get

Get a list of the Data Providers available to the current user.

This method returns a list of Data Provider objects that represent servers with disk space accessible for storing Userfiles. 

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

api_instance = CbrainClient::DataProvidersApi.new

begin
  #Get a list of the Data Providers available to the current user.
  result = api_instance.data_providers_get
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling DataProvidersApi->data_providers_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;DataProvider&gt;**](DataProvider.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **data_providers_id_browse_get**
> Array&lt;FileInfo&gt; data_providers_id_browse_get(id)

List the files on a Data Provider.

This method allows the inspection of what files are present on a Data Provider specified by the ID parameter. Files that are not yet registered as Userfiles are visible using this method, as well as regularly accessible Userfiles. 

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

api_instance = CbrainClient::DataProvidersApi.new

id = 56 # Integer | The ID of the Data Provider to browse.


begin
  #List the files on a Data Provider.
  result = api_instance.data_providers_id_browse_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling DataProvidersApi->data_providers_id_browse_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the Data Provider to browse. | 

### Return type

[**Array&lt;FileInfo&gt;**](FileInfo.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **data_providers_id_delete_post**
> RegistrationInfo data_providers_id_delete_post(id, multi_registration_mod_req)

Deletes unregistered files from a CBRAIN Data provider.

This method allows files that have not been registered from CBRAIN to be deleted. This may be necessary if files were uploaded in error, or if they were unregistered but not immediately deleted. 

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

api_instance = CbrainClient::DataProvidersApi.new

id = 56 # Integer | The ID of the Data Provider to delete files from.

multi_registration_mod_req = CbrainClient::MultiRegistrationModReq.new # MultiRegistrationModReq | Arrays containing the files to delete.


begin
  #Deletes unregistered files from a CBRAIN Data provider.
  result = api_instance.data_providers_id_delete_post(id, multi_registration_mod_req)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling DataProvidersApi->data_providers_id_delete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the Data Provider to delete files from. | 
 **multi_registration_mod_req** | [**MultiRegistrationModReq**](MultiRegistrationModReq.md)| Arrays containing the files to delete. | 

### Return type

[**RegistrationInfo**](RegistrationInfo.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml



# **data_providers_id_get**
> DataProvider data_providers_id_get(id)

Get information on a particular Data Provider.

This method returns a single Data Provider specified by the ID parameter 

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

api_instance = CbrainClient::DataProvidersApi.new

id = 56 # Integer | ID of the Data Provider to get information on.


begin
  #Get information on a particular Data Provider.
  result = api_instance.data_providers_id_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling DataProvidersApi->data_providers_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the Data Provider to get information on. | 

### Return type

[**DataProvider**](DataProvider.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **data_providers_id_is_alive_get**
> String data_providers_id_is_alive_get(id)

Pings a Data Provider to check if it is running.

This method allows the querying of a Data Provider specified by the ID parameter to see if it is running or not. 

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

api_instance = CbrainClient::DataProvidersApi.new

id = 789 # Integer | The ID of the Data Provider to query.


begin
  #Pings a Data Provider to check if it is running.
  result = api_instance.data_providers_id_is_alive_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling DataProvidersApi->data_providers_id_is_alive_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the Data Provider to query. | 

### Return type

**String**

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **data_providers_id_register_post**
> RegistrationInfo data_providers_id_register_post(id, multi_registration_mod_req)

Registers a file as a Userfile in CBRAIN.

This method allows new files to be added to CBRAIN. The files must first be transfered to the Data Provider via SFTP. For more information on SFTP file transfers, consult the CBRAIN Wiki documentation. Once files are present on the Data Provider, this method registers them in CBRAIN by specifying the file type. You can also specify to copy/move the files to another Data Provider after file registration. 

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

api_instance = CbrainClient::DataProvidersApi.new

id = 56 # Integer | The ID of the Data Provider to register files on.

multi_registration_mod_req = CbrainClient::MultiRegistrationModReq.new # MultiRegistrationModReq | Arrays containing the filenames and types to register.


begin
  #Registers a file as a Userfile in CBRAIN.
  result = api_instance.data_providers_id_register_post(id, multi_registration_mod_req)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling DataProvidersApi->data_providers_id_register_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the Data Provider to register files on. | 
 **multi_registration_mod_req** | [**MultiRegistrationModReq**](MultiRegistrationModReq.md)| Arrays containing the filenames and types to register. | 

### Return type

[**RegistrationInfo**](RegistrationInfo.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml



# **data_providers_id_unregister_post**
> RegistrationInfo data_providers_id_unregister_post(id, multi_registration_mod_req)

Unregisters files as Userfile in CBRAIN.

This method allows files to be unregistered from CBRAIN. This will not delete the files, but removes them from the CBRAIN database, so Tools may no longer be run on them. 

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

api_instance = CbrainClient::DataProvidersApi.new

id = 56 # Integer | The ID of the Data Provider to unregister files from.

multi_registration_mod_req = CbrainClient::MultiRegistrationModReq.new # MultiRegistrationModReq | Arrays containing the filenames to unregister.


begin
  #Unregisters files as Userfile in CBRAIN.
  result = api_instance.data_providers_id_unregister_post(id, multi_registration_mod_req)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling DataProvidersApi->data_providers_id_unregister_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the Data Provider to unregister files from. | 
 **multi_registration_mod_req** | [**MultiRegistrationModReq**](MultiRegistrationModReq.md)| Arrays containing the filenames to unregister. | 

### Return type

[**RegistrationInfo**](RegistrationInfo.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml



