# CbrainClient::UsersApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_get**](UsersApi.md#users_get) | **GET** /users | Returns all of the users in CBRAIN. Only available to admins.
[**users_id_delete**](UsersApi.md#users_id_delete) | **DELETE** /users/{id} | Deletes a CBRAIN user
[**users_id_get**](UsersApi.md#users_id_get) | **GET** /users/{id} | Returns information about a user
[**users_id_patch**](UsersApi.md#users_id_patch) | **PATCH** /users/{id} | Update information about a user
[**users_post**](UsersApi.md#users_post) | **POST** /users | Create a new user in CBRAIN. Only available to admins.


# **users_get**
> Array&lt;User&gt; users_get(opts)

Returns all of the users in CBRAIN. Only available to admins.

Returns all of the users registered in CBRAIN, as well as information on their permissions and group/site memberships.

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

api_instance = CbrainClient::UsersApi.new

opts = { 
  page: 56, # Integer | Page number when paginating. See also the per_page parameter
  per_page: 56 # Integer | Size of each page when paginating. See also the page parameter
}

begin
  #Returns all of the users in CBRAIN. Only available to admins.
  result = api_instance.users_get(opts)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UsersApi->users_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number when paginating. See also the per_page parameter | [optional] 
 **per_page** | **Integer**| Size of each page when paginating. See also the page parameter | [optional] 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **users_id_delete**
> users_id_delete(id)

Deletes a CBRAIN user

Deletes a CBRAIN User from the database 

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

api_instance = CbrainClient::UsersApi.new

id = 56 # Integer | ID of user to update


begin
  #Deletes a CBRAIN user
  api_instance.users_id_delete(id)
rescue CbrainClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of user to update | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **users_id_get**
> User users_id_get(id)

Returns information about a user

Returns the information about the user associated with the ID given in argument. A normal user only has access to her own information, while an administrator or site manager can have access to a larger set of users. 

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

api_instance = CbrainClient::UsersApi.new

id = 56 # Integer | ID of the user


begin
  #Returns information about a user
  result = api_instance.users_id_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the user | 

### Return type

[**User**](User.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **users_id_patch**
> User users_id_patch(id, user_mod_req)

Update information about a user

Updates the information about a user 

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

api_instance = CbrainClient::UsersApi.new

id = 56 # Integer | ID of user to update

user_mod_req = CbrainClient::UserModReq.new # UserModReq | An object representing a request for a new User


begin
  #Update information about a user
  result = api_instance.users_id_patch(id, user_mod_req)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UsersApi->users_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of user to update | 
 **user_mod_req** | [**UserModReq**](UserModReq.md)| An object representing a request for a new User | 

### Return type

[**User**](User.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **users_post**
> User users_post(user_mod_req)

Create a new user in CBRAIN. Only available to admins.

Creates a new user in CBRAIN. Only admins can create new users. 

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

api_instance = CbrainClient::UsersApi.new

user_mod_req = CbrainClient::UserModReq.new # UserModReq | An object representing a request for a new User


begin
  #Create a new user in CBRAIN. Only available to admins.
  result = api_instance.users_post(user_mod_req)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling UsersApi->users_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_mod_req** | [**UserModReq**](UserModReq.md)| An object representing a request for a new User | 

### Return type

[**User**](User.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



