# CbrainClient::ToolsApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tools_get**](ToolsApi.md#tools_get) | **GET** /tools | Get the list of Tools.


# **tools_get**
> Array&lt;Tool&gt; tools_get

Get the list of Tools.

This method returns a list of all of the Tools that exist in CBRAIN. Tools encapsulate a scientific program designed to extract information from an input Userfile. 

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

api_instance = CbrainClient::ToolsApi.new

begin
  #Get the list of Tools.
  result = api_instance.tools_get
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling ToolsApi->tools_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Tool&gt;**](Tool.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



