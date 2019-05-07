# cbrain_client

CbrainClient - the Ruby gem for the CBRAIN API

API for interacting with the CBRAIN Platform

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 5.1.1
- Package version: 5.1.1
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://github.com/aces/cbrain](https://github.com/aces/cbrain)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build cbrain_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./cbrain_client-5.1.1.gem
```
(for development, run `gem install --dev ./cbrain_client-5.1.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cbrain_client', '~> 5.1.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/aces/cbrain-client-gem, then add the following in the Gemfile:

    gem 'cbrain_client', :git => 'https://github.com/aces/cbrain-client-gem.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'cbrain_client'

# Setup authorization
CbrainClient.configure do |config|
  # Configure API key authorization: BrainPortalSession
  config.api_key['cbrain_api_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['cbrain_api_token'] = 'Bearer'
end

api_instance = CbrainClient::BourreauxApi.new

opts = { 
  page: 56, # Integer | Page number when paginating. See also the per_page parameter
  per_page: 56 # Integer | Size of each page when paginating. See also the page parameter
}

begin
  #Get a list of the Bourreaux available to be used by the current user.
  result = api_instance.bourreaux_get(opts)
  p result
rescue CbrainClient::ApiError => e
  puts "Exception when calling BourreauxApi->bourreaux_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3000*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CbrainClient::BourreauxApi* | [**bourreaux_get**](docs/BourreauxApi.md#bourreaux_get) | **GET** /bourreaux | Get a list of the Bourreaux available to be used by the current user.
*CbrainClient::BourreauxApi* | [**bourreaux_id_get**](docs/BourreauxApi.md#bourreaux_id_get) | **GET** /bourreaux/{id} | Get information about a Bourreau.
*CbrainClient::DataProvidersApi* | [**data_providers_get**](docs/DataProvidersApi.md#data_providers_get) | **GET** /data_providers | Get a list of the Data Providers available to the current user.
*CbrainClient::DataProvidersApi* | [**data_providers_id_browse_get**](docs/DataProvidersApi.md#data_providers_id_browse_get) | **GET** /data_providers/{id}/browse | List the files on a Data Provider.
*CbrainClient::DataProvidersApi* | [**data_providers_id_delete_post**](docs/DataProvidersApi.md#data_providers_id_delete_post) | **POST** /data_providers/{id}/delete | Deletes unregistered files from a CBRAIN Data provider.
*CbrainClient::DataProvidersApi* | [**data_providers_id_get**](docs/DataProvidersApi.md#data_providers_id_get) | **GET** /data_providers/{id} | Get information on a particular Data Provider.
*CbrainClient::DataProvidersApi* | [**data_providers_id_is_alive_get**](docs/DataProvidersApi.md#data_providers_id_is_alive_get) | **GET** /data_providers/{id}/is_alive | Pings a Data Provider to check if it is running.
*CbrainClient::DataProvidersApi* | [**data_providers_id_register_post**](docs/DataProvidersApi.md#data_providers_id_register_post) | **POST** /data_providers/{id}/register | Registers a file as a Userfile in CBRAIN.
*CbrainClient::DataProvidersApi* | [**data_providers_id_unregister_post**](docs/DataProvidersApi.md#data_providers_id_unregister_post) | **POST** /data_providers/{id}/unregister | Unregisters files as Userfile in CBRAIN.
*CbrainClient::GroupsApi* | [**groups_get**](docs/GroupsApi.md#groups_get) | **GET** /groups | Get a list of the Groups (projects) available to the current user.
*CbrainClient::GroupsApi* | [**groups_id_delete**](docs/GroupsApi.md#groups_id_delete) | **DELETE** /groups/{id} | Deletes a Group (project).
*CbrainClient::GroupsApi* | [**groups_id_get**](docs/GroupsApi.md#groups_id_get) | **GET** /groups/{id} | Get information on a Group (project).
*CbrainClient::GroupsApi* | [**groups_id_put**](docs/GroupsApi.md#groups_id_put) | **PUT** /groups/{id} | Update the properties of a Group (project).
*CbrainClient::GroupsApi* | [**groups_post**](docs/GroupsApi.md#groups_post) | **POST** /groups | Creates a new Group.
*CbrainClient::SessionsApi* | [**session_delete**](docs/SessionsApi.md#session_delete) | **DELETE** /session | Destroy the current session
*CbrainClient::SessionsApi* | [**session_get**](docs/SessionsApi.md#session_get) | **GET** /session | Get session information
*CbrainClient::SessionsApi* | [**session_post**](docs/SessionsApi.md#session_post) | **POST** /session | Create a new session
*CbrainClient::TagsApi* | [**tags_get**](docs/TagsApi.md#tags_get) | **GET** /tags | Get a list of the tags currently in CBRAIN.
*CbrainClient::TagsApi* | [**tags_id_delete**](docs/TagsApi.md#tags_id_delete) | **DELETE** /tags/{id} | Delete a tag.
*CbrainClient::TagsApi* | [**tags_id_get**](docs/TagsApi.md#tags_id_get) | **GET** /tags/{id} | Get one tag.
*CbrainClient::TagsApi* | [**tags_id_put**](docs/TagsApi.md#tags_id_put) | **PUT** /tags/{id} | Update a tag.
*CbrainClient::TagsApi* | [**tags_post**](docs/TagsApi.md#tags_post) | **POST** /tags | Create a new tag.
*CbrainClient::TasksApi* | [**tasks_get**](docs/TasksApi.md#tasks_get) | **GET** /tasks | Get the list of Tasks.
*CbrainClient::TasksApi* | [**tasks_id_get**](docs/TasksApi.md#tasks_id_get) | **GET** /tasks/{id} | Get information on a Task.
*CbrainClient::TasksApi* | [**tasks_post**](docs/TasksApi.md#tasks_post) | **POST** /tasks | Create a new Task.
*CbrainClient::ToolConfigsApi* | [**tool_configs_get**](docs/ToolConfigsApi.md#tool_configs_get) | **GET** /tool_configs | Get a list of tool versions installed.
*CbrainClient::ToolConfigsApi* | [**tool_configs_id_get**](docs/ToolConfigsApi.md#tool_configs_id_get) | **GET** /tool_configs/{id} | Get information about a particular tool configuration
*CbrainClient::ToolsApi* | [**tools_get**](docs/ToolsApi.md#tools_get) | **GET** /tools | Get the list of Tools.
*CbrainClient::UserfilesApi* | [**userfiles_change_provider_post**](docs/UserfilesApi.md#userfiles_change_provider_post) | **POST** /userfiles/change_provider | Moves the Userfiles from their current Data Provider to a new one.
*CbrainClient::UserfilesApi* | [**userfiles_compress_post**](docs/UserfilesApi.md#userfiles_compress_post) | **POST** /userfiles/compress | Compresses many Userfiles each into their own GZIP archive.
*CbrainClient::UserfilesApi* | [**userfiles_delete_files_delete**](docs/UserfilesApi.md#userfiles_delete_files_delete) | **DELETE** /userfiles/delete_files | Delete several files that have been registered as Userfiles
*CbrainClient::UserfilesApi* | [**userfiles_download_post**](docs/UserfilesApi.md#userfiles_download_post) | **POST** /userfiles/download | Download several files
*CbrainClient::UserfilesApi* | [**userfiles_get**](docs/UserfilesApi.md#userfiles_get) | **GET** /userfiles | List of the Userfiles accessible to the current user.
*CbrainClient::UserfilesApi* | [**userfiles_id_content_get**](docs/UserfilesApi.md#userfiles_id_content_get) | **GET** /userfiles/{id}/content | Get the content of a Userfile
*CbrainClient::UserfilesApi* | [**userfiles_id_get**](docs/UserfilesApi.md#userfiles_id_get) | **GET** /userfiles/{id} | Get information on a Userfile.
*CbrainClient::UserfilesApi* | [**userfiles_id_put**](docs/UserfilesApi.md#userfiles_id_put) | **PUT** /userfiles/{id} | Update information on a Userfile.
*CbrainClient::UserfilesApi* | [**userfiles_post**](docs/UserfilesApi.md#userfiles_post) | **POST** /userfiles | Creates a new Userfile and upload its content.
*CbrainClient::UserfilesApi* | [**userfiles_sync_multiple_post**](docs/UserfilesApi.md#userfiles_sync_multiple_post) | **POST** /userfiles/sync_multiple | Syncs Userfiles to the local Data Providers cache.
*CbrainClient::UserfilesApi* | [**userfiles_uncompress_post**](docs/UserfilesApi.md#userfiles_uncompress_post) | **POST** /userfiles/uncompress | Uncompresses many Userfiles.
*CbrainClient::UsersApi* | [**users_get**](docs/UsersApi.md#users_get) | **GET** /users | Returns all of the users in CBRAIN. Only available to admins.
*CbrainClient::UsersApi* | [**users_id_delete**](docs/UsersApi.md#users_id_delete) | **DELETE** /users/{id} | Deletes a CBRAIN user
*CbrainClient::UsersApi* | [**users_id_get**](docs/UsersApi.md#users_id_get) | **GET** /users/{id} | Returns information about a user
*CbrainClient::UsersApi* | [**users_id_patch**](docs/UsersApi.md#users_id_patch) | **PATCH** /users/{id} | Update information about a user
*CbrainClient::UsersApi* | [**users_post**](docs/UsersApi.md#users_post) | **POST** /users | Create a new user in CBRAIN. Only available to admins.


## Documentation for Models

 - [CbrainClient::Bourreau](docs/Bourreau.md)
 - [CbrainClient::CbrainTask](docs/CbrainTask.md)
 - [CbrainClient::CbrainTaskModReq](docs/CbrainTaskModReq.md)
 - [CbrainClient::DataProvider](docs/DataProvider.md)
 - [CbrainClient::FileInfo](docs/FileInfo.md)
 - [CbrainClient::Group](docs/Group.md)
 - [CbrainClient::GroupModReq](docs/GroupModReq.md)
 - [CbrainClient::MultiRegistrationModReq](docs/MultiRegistrationModReq.md)
 - [CbrainClient::MultiUserfilesModReq](docs/MultiUserfilesModReq.md)
 - [CbrainClient::RegistrationInfo](docs/RegistrationInfo.md)
 - [CbrainClient::SessionInfo](docs/SessionInfo.md)
 - [CbrainClient::Tag](docs/Tag.md)
 - [CbrainClient::TagModReq](docs/TagModReq.md)
 - [CbrainClient::Tool](docs/Tool.md)
 - [CbrainClient::ToolConfig](docs/ToolConfig.md)
 - [CbrainClient::User](docs/User.md)
 - [CbrainClient::UserModReq](docs/UserModReq.md)
 - [CbrainClient::Userfile](docs/Userfile.md)
 - [CbrainClient::UserfileModReq](docs/UserfileModReq.md)


## Documentation for Authorization


### BrainPortalSession

- **Type**: API key
- **API key parameter name**: cbrain_api_token
- **Location**: URL query string

