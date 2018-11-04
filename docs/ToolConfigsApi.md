# CbrainClient::ToolConfigsApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tool_configs_get**](ToolConfigsApi.md#tool_configs_get) | **GET** /tool_configs | Get a list of tool versions installed.
[**tool_configs_id_get**](ToolConfigsApi.md#tool_configs_id_get) | **GET** /tool_configs/{id} | Get information about a particular tool configuration


# **tool_configs_get**
> Array&lt;ToolConfig&gt; tool_configs_get

Get a list of tool versions installed.

This method returns a list of tool config objects. 

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

api_instance = CbrainClient::ToolConfigsApi.new

begin
  #Get a list of tool versions installed.
  result = api_instance.tool_configs_get
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling ToolConfigsApi->tool_configs_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ToolConfig&gt;**](ToolConfig.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **tool_configs_id_get**
> ToolConfig tool_configs_id_get(id)

Get information about a particular tool configuration

Returns the information about how a particular configuration of a tool on an execution server. 

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

api_instance = CbrainClient::ToolConfigsApi.new

id = 56 # Integer | the ID of the configuration


begin
  #Get information about a particular tool configuration
  result = api_instance.tool_configs_id_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling ToolConfigsApi->tool_configs_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| the ID of the configuration | 

### Return type

[**ToolConfig**](ToolConfig.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



