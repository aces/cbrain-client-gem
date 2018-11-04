# CbrainClient::BourreauxApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bourreaux_get**](BourreauxApi.md#bourreaux_get) | **GET** /bourreaux | Get a list of the Bourreaux available to be used by the current user.
[**bourreaux_id_get**](BourreauxApi.md#bourreaux_id_get) | **GET** /bourreaux/{id} | Get information about a Bourreau.


# **bourreaux_get**
> Array&lt;Bourreau&gt; bourreaux_get

Get a list of the Bourreaux available to be used by the current user.

This method returns a list of Bourreau objects. 

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

api_instance = CbrainClient::BourreauxApi.new

begin
  #Get a list of the Bourreaux available to be used by the current user.
  result = api_instance.bourreaux_get
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling BourreauxApi->bourreaux_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Bourreau&gt;**](Bourreau.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



# **bourreaux_id_get**
> Bourreau bourreaux_id_get(id)

Get information about a Bourreau.

This method returns a single Bourreau object based on the ID parameter. 

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

api_instance = CbrainClient::BourreauxApi.new

id = 56 # Integer | ID of the Bourreau to get information on.


begin
  #Get information about a Bourreau.
  result = api_instance.bourreaux_id_get(id)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling BourreauxApi->bourreaux_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the Bourreau to get information on. | 

### Return type

[**Bourreau**](Bourreau.md)

### Authorization

[BrainPortalSession](../README.md#BrainPortalSession)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json, application/xml



