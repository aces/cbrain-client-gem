# CbrainClient::SessionsApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**session_delete**](SessionsApi.md#session_delete) | **DELETE** /session | Destroy the current session
[**session_get**](SessionsApi.md#session_get) | **GET** /session | Get session information
[**session_post**](SessionsApi.md#session_post) | **POST** /session | Create a new session


# **session_delete**
> session_delete

Destroy the current session

This destroys the current session, effectively terminating the access to the service. 

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

api_instance = CbrainClient::SessionsApi.new

begin
  #Destroy the current session
  api_instance.session_delete
rescue CbrainClient::ApiError => e
  puts "Exception when calling SessionsApi->session_delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **session_get**
> SessionInfo session_get

Get session information

This returns information about the current session. 

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

api_instance = CbrainClient::SessionsApi.new

begin
  #Get session information
  result = api_instance.session_get
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling SessionsApi->session_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SessionInfo**](SessionInfo.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **session_post**
> SessionInfo session_post(login, password)

Create a new session

This is the main entry point to create a CBRAIN session. Note that if a user is currently logged in, a new session will not be created, and the current session will be re-used. 

### Example
```ruby
# load the gem
require 'cbrain_client'

api_instance = CbrainClient::SessionsApi.new

login = 'login_example' # String | The username of the user trying to connect.

password = 'password_example' # String | The password of the user


begin
  #Create a new session
  result = api_instance.session_post(login, password)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling SessionsApi->session_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **String**| The username of the user trying to connect. | 
 **password** | **String**| The password of the user | 

### Return type

[**SessionInfo**](SessionInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json, application/xml



