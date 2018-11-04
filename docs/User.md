# CbrainClient::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique numerical ID for the user. | [optional] 
**login** | **String** | UNIX-style username. | [optional] 
**password** | **String** | Password field | [optional] 
**password_confirmation** | **String** | Password field (generally same as &#39;password&#39;) | [optional] 
**full_name** | **String** | Full name of the user. | [optional] 
**email** | **String** | email address of the user. | [optional] 
**city** | **String** | city where the user is located | [optional] 
**country** | **String** | country where the user is located | [optional] 
**time_zone** | **String** | time-zone (should make it this an enum) | [optional] 
**type** | **String** | Classification of user permission level | [optional] [default to &quot;NormalUser&quot;]
**site_id** | **Integer** | ID of the site affiliation for the user. | [optional] 
**last_connected_at** | **String** | time of last connection by the user. (can be empty) | [optional] 
**account_locked** | **String** | Whether or not the account is locked. | [optional] 


