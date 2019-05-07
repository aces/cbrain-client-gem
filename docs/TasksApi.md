# CbrainClient::TasksApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tasks_get**](TasksApi.md#tasks_get) | **GET** /tasks | Get the list of Tasks.
[**tasks_id_get**](TasksApi.md#tasks_id_get) | **GET** /tasks/{id} | Get information on a Task.
[**tasks_post**](TasksApi.md#tasks_post) | **POST** /tasks | Create a new Task.


# **tasks_get**
> Array&lt;CbrainTask&gt; tasks_get(opts)

Get the list of Tasks.

This method returns the list of Tasks accessible to the current user. 

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

api_instance = CbrainClient::TasksApi.new

opts = { 
  page: 56, # Integer | Page number when paginating. See also the per_page parameter
  per_page: 56 # Integer | Size of each page when paginating. See also the page parameter
}

begin
  #Get the list of Tasks.
  result = api_instance.tasks_get(opts)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling TasksApi->tasks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number when paginating. See also the per_page parameter | [optional] 
 **per_page** | **Integer**| Size of each page when paginating. See also the page parameter | [optional] 

### Return type

[**Array&lt;CbrainTask&gt;**](CbrainTask.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **tasks_id_get**
> CbrainTask tasks_id_get(id)

Get information on a Task.

This method returns information on a Task, including its status, Task restartability and information on where the results are kept. 

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

api_instance = CbrainClient::TasksApi.new

id = 56 # Integer | The ID number of the Task to delete.


begin
  #Get information on a Task.
  result = api_instance.tasks_id_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling TasksApi->tasks_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The ID number of the Task to delete. | 

### Return type

[**CbrainTask**](CbrainTask.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **tasks_post**
> Array&lt;CbrainTask&gt; tasks_post(cbrain_task)

Create a new Task.

This method allows the creation of a new Task. 

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

api_instance = CbrainClient::TasksApi.new

cbrain_task = CbrainClient::CbrainTaskModReq.new # CbrainTaskModReq | The task to create.


begin
  #Create a new Task.
  result = api_instance.tasks_post(cbrain_task)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling TasksApi->tasks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cbrain_task** | [**CbrainTaskModReq**](CbrainTaskModReq.md)| The task to create. | 

### Return type

[**Array&lt;CbrainTask&gt;**](CbrainTask.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



