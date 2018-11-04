# CbrainClient::TagsApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tags_get**](TagsApi.md#tags_get) | **GET** /tags | Get a list of the tags currently in CBRAIN.
[**tags_id_delete**](TagsApi.md#tags_id_delete) | **DELETE** /tags/{id} | Delete a tag.
[**tags_id_get**](TagsApi.md#tags_id_get) | **GET** /tags/{id} | Get one tag.
[**tags_id_put**](TagsApi.md#tags_id_put) | **PUT** /tags/{id} | Update a tag.
[**tags_post**](TagsApi.md#tags_post) | **POST** /tags | Create a new tag.


# **tags_get**
> Array&lt;Tag&gt; tags_get

Get a list of the tags currently in CBRAIN.

This method returns a list of tag objects. 

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

api_instance = CbrainClient::TagsApi.new

begin
  #Get a list of the tags currently in CBRAIN.
  result = api_instance.tags_get
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling TagsApi->tags_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Tag&gt;**](Tag.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **tags_id_delete**
> tags_id_delete(id)

Delete a tag.

Delete the tag specified by the ID parameter.

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

api_instance = CbrainClient::TagsApi.new

id = 56 # Integer | ID of the tag to delete.


begin
  #Delete a tag.
  api_instance.tags_id_delete(id)
rescue CbrainClient::ApiError => e
  puts "Exception when calling TagsApi->tags_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the tag to delete. | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **tags_id_get**
> Tag tags_id_get(id)

Get one tag.

Returns a single tag with the ID specified. 

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

api_instance = CbrainClient::TagsApi.new

id = 56 # Integer | The ID of the tag to get.


begin
  #Get one tag.
  result = api_instance.tags_id_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling TagsApi->tags_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID of the tag to get. | 

### Return type

[**Tag**](Tag.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **tags_id_put**
> tags_id_put(id, tag_mod_req)

Update a tag.

Update the tag specified by the ID parameter.

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

api_instance = CbrainClient::TagsApi.new

id = 56 # Integer | ID of the tag to update.

tag_mod_req = CbrainClient::TagModReq.new # TagModReq | 


begin
  #Update a tag.
  api_instance.tags_id_put(id, tag_mod_req)
rescue CbrainClient::ApiError => e
  puts "Exception when calling TagsApi->tags_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the tag to update. | 
 **tag_mod_req** | [**TagModReq**](TagModReq.md)|  | 

### Return type

nil (empty response body)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **tags_post**
> Tag tags_post(tag_mod_req)

Create a new tag.

Create a new tag in CBRAIN. 

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

api_instance = CbrainClient::TagsApi.new

tag_mod_req = CbrainClient::TagModReq.new # TagModReq | 


begin
  #Create a new tag.
  result = api_instance.tags_post(tag_mod_req)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling TagsApi->tags_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_mod_req** | [**TagModReq**](TagModReq.md)|  | 

### Return type

[**Tag**](Tag.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



