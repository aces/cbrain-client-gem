# CbrainClient::GroupsApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_get**](GroupsApi.md#groups_get) | **GET** /groups | Get a list of the Groups (projects) available to the current user.
[**groups_id_delete**](GroupsApi.md#groups_id_delete) | **DELETE** /groups/{id} | Deletes a Group (project).
[**groups_id_get**](GroupsApi.md#groups_id_get) | **GET** /groups/{id} | Get information on a Group (project).
[**groups_id_put**](GroupsApi.md#groups_id_put) | **PUT** /groups/{id} | Update the properties of a Group (project).
[**groups_post**](GroupsApi.md#groups_post) | **POST** /groups | Creates a new Group.


# **groups_get**
> Array&lt;Group&gt; groups_get

Get a list of the Groups (projects) available to the current user.

This method returns a list of all of the groups that the current user has access to. 

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

api_instance = CbrainClient::GroupsApi.new

begin
  #Get a list of the Groups (projects) available to the current user.
  result = api_instance.groups_get
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Group&gt;**](Group.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **groups_id_delete**
> groups_id_delete(id)

Deletes a Group (project).

This method allows the removal of Groups (projects) that are no longer necessary. Groups that have Userfiles associated with them may not be deleted. 

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

api_instance = CbrainClient::GroupsApi.new

id = 56 # Integer | ID of the Group to delete.


begin
  #Deletes a Group (project).
  api_instance.groups_id_delete(id)
rescue CbrainClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the Group to delete. | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json, application/xml



# **groups_id_get**
> Group groups_id_get(id)

Get information on a Group (project).

This method returns information on a single Group (project), specified by the ID parameter. Information returned includes the list of Users who are members of the group, the ID of the Site the Group is part of, and whether or not the group is visible to Regular Users. 

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

api_instance = CbrainClient::GroupsApi.new

id = 56 # Integer | ID of the Group to get information on.


begin
  #Get information on a Group (project).
  result = api_instance.groups_id_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the Group to get information on. | 

### Return type

[**Group**](Group.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **groups_id_put**
> groups_id_put(id, group_mod_req)

Update the properties of a Group (project).

This method allows the properties of a Group (project) to be updated. This includes the User membership, the ID of the site the Group belongs to, and the visibility status of the group to Regular Users. 

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

api_instance = CbrainClient::GroupsApi.new

id = 56 # Integer | ID of the Group

group_mod_req = CbrainClient::GroupModReq.new # GroupModReq | An object with the group information to update


begin
  #Update the properties of a Group (project).
  api_instance.groups_id_put(id, group_mod_req)
rescue CbrainClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the Group | 
 **group_mod_req** | [**GroupModReq**](GroupModReq.md)| An object with the group information to update | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json, application/xml



# **groups_post**
> Group groups_post(group_mod_req)

Creates a new Group.

This method creates a new Group, which allows users to organize their files and tasks. 

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

api_instance = CbrainClient::GroupsApi.new

group_mod_req = CbrainClient::GroupModReq.new # GroupModReq | An object describing the group to create


begin
  #Creates a new Group.
  result = api_instance.groups_post(group_mod_req)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_mod_req** | [**GroupModReq**](GroupModReq.md)| An object describing the group to create | 

### Return type

[**Group**](Group.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



