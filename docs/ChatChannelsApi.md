# ZoomUs::ChatChannelsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_channel**](ChatChannelsApi.md#create_channel) | **POST** /chat/users/me/channels | Create a Channel
[**delete_channel**](ChatChannelsApi.md#delete_channel) | **DELETE** /chat/channels/{channelId} | Delete a Channel
[**get_channel**](ChatChannelsApi.md#get_channel) | **GET** /chat/channels/{channelId} | Get a Channel
[**get_channels**](ChatChannelsApi.md#get_channels) | **GET** /chat/users/me/channels | List User&#39;s Channels
[**invite_channel_members**](ChatChannelsApi.md#invite_channel_members) | **POST** /chat/channels/{channelId}/members | Invite Channel Members
[**join_channel**](ChatChannelsApi.md#join_channel) | **POST** /chat/channels/{channelId}/members/me | Join a Channel
[**leave_channel**](ChatChannelsApi.md#leave_channel) | **DELETE** /chat/channels/{channelId}/members/me | Leave a Channel
[**list_channel_members**](ChatChannelsApi.md#list_channel_members) | **GET** /chat/channels/{channelId}/members | List Channel Members
[**remove_a_channel_member**](ChatChannelsApi.md#remove_a_channel_member) | **DELETE** /chat/channels/{channelId}/members/{memberId} | Remove a Member
[**update_channel**](ChatChannelsApi.md#update_channel) | **PATCH** /chat/channels/{channelId} | Update a Channel


# **create_channel**
> InlineResponse2012 create_channel(opts)

Create a Channel

Zoom chat channels allow users to communicate via chat in private or public groups. Use this API to create a channel for a user.  <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b> This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scopes**: `chat_channel:write`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

opts = { 
  body: ZoomUs::Body7.new # Body7 | 
}

begin
  #Create a Channel
  result = api_instance.create_channel(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->create_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body7**](Body7.md)|  | [optional] 

### Return type

[**InlineResponse2012**](InlineResponse2012.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_channel**
> Object delete_channel(channel_id)

Delete a Channel

Zoom chat [channels](https://support.zoom.us/hc/en-us/articles/200912909-Getting-Started-With-Channels-Group-Messaging-) allow users to communicate via chat in private or public groups. Use this API to delete a specific channel.   <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope:** `chat_channel:write`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

channel_id = 'channel_id_example' # String | Channel ID: Unique Identifier of a channel.


begin
  #Delete a Channel
  result = api_instance.delete_channel(channel_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->delete_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| Channel ID: Unique Identifier of a channel. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_channel**
> InlineResponse20010 get_channel(channel_id)

Get a Channel

Zoom chat [channels](https://support.zoom.us/hc/en-us/articles/200912909-Getting-Started-With-Channels-Group-Messaging-) allow users to communicate via chat in private or public groups. Use this API to get information about a specific channel.   <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope:** `chat_channel:read` <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

channel_id = 'channel_id_example' # String | Channel ID: Unique Identifier of a channel.


begin
  #Get a Channel
  result = api_instance.get_channel(channel_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->get_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| Channel ID: Unique Identifier of a channel. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml



# **get_channels**
> InlineResponse2007 get_channels(opts)

List User's Channels

Zoom chat [channels](https://support.zoom.us/hc/en-us/articles/200912909-Getting-Started-With-Channels-Group-Messaging-) allow users to communicate via chat in private or public groups. Use this API to list a user's chat channels.   <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b> This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope**: `chat_channel:read`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

opts = { 
  page_size: 10, # Integer | The number of records returned from a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. The expiration period for this token is 15 minutes.
}

begin
  #List User's Channels
  result = api_instance.get_channels(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->get_channels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The number of records returned from a single API call. | [optional] [default to 10]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **invite_channel_members**
> InlineResponse2013 invite_channel_members(channel_id, opts)

Invite Channel Members

A [channel](https://support.zoom.us/hc/en-us/articles/200912909-Getting-Started-With-Channels-Group-Messaging-) can have one or multiple members. Use this API to invite members that are in your contact list to a channel. The maximum number of members that can be added at once with this API is 5.   <p style=\"background-color:#e7f3fe;\"><strong>Note:</strong> This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope:** `chat_channel:write`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

channel_id = 'channel_id_example' # String | Channel ID: Unique Identifier of the channel.

opts = { 
  body: ZoomUs::Body9.new # Body9 | 
}

begin
  #Invite Channel Members
  result = api_instance.invite_channel_members(channel_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->invite_channel_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| Channel ID: Unique Identifier of the channel. | 
 **body** | [**Body9**](Body9.md)|  | [optional] 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **join_channel**
> InlineResponse2014 join_channel(channel_id)

Join a Channel

A [channel](https://support.zoom.us/hc/en-us/articles/200912909-Getting-Started-With-Channels-Group-Messaging-) can have one or multiple members. Use this API to join a channel that is open for anyone in the same organization to join. You cannot use this API to join private channels that only allows invited members to be a part of it.  <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope:** `chat_channel:write`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

channel_id = 'channel_id_example' # String | Channel Id.


begin
  #Join a Channel
  result = api_instance.join_channel(channel_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->join_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| Channel Id. | 

### Return type

[**InlineResponse2014**](InlineResponse2014.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **leave_channel**
> Object leave_channel(channel_id)

Leave a Channel

If you're no longer interested in being a member of an existing channel, you can leave the channel at any time. Use this API to leave a specific channel. After leaving the channel, you can no longer access information from that channel.  <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope:** `chat_channel:write`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

channel_id = 'channel_id_example' # String | Channel ID: Unique Identifier of a channel.


begin
  #Leave a Channel
  result = api_instance.leave_channel(channel_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->leave_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| Channel ID: Unique Identifier of a channel. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_channel_members**
> InlineResponse20011 list_channel_members(channel_id, opts)

List Channel Members

A [channel](https://support.zoom.us/hc/en-us/articles/200912909-Getting-Started-With-Channels-Group-Messaging-) can have one or multiple members. List all the members of a channel using this API.  <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scopes:** `chat_channel:read`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

channel_id = 'channel_id_example' # String | Channel Id.

opts = { 
  page_size: 30, # Integer | The number of records returned with a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #List Channel Members
  result = api_instance.list_channel_members(channel_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->list_channel_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| Channel Id. | 
 **page_size** | **Integer**| The number of records returned with a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **remove_a_channel_member**
> Object remove_a_channel_member(channel_id, member_id)

Remove a Member

 A [channel](https://support.zoom.us/hc/en-us/articles/200912909-Getting-Started-With-Channels-Group-Messaging-) can have one or multiple members. Use this API to remove a member from a chat channel.<br><br>  **Scopes:** `chat_channel:write`<br>      <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

channel_id = 'channel_id_example' # String | Unique Identifier of the Channel from where you would like to remove a member. This can be retrieved from the [List Channels API](https://marketplace.zoom.us/docs/api-reference/zoom-api/chat-channels/getchannels).

member_id = 'member_id_example' # String | Email address of the member whom you would like to be remove from the channel.


begin
  #Remove a Member
  result = api_instance.remove_a_channel_member(channel_id, member_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->remove_a_channel_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| Unique Identifier of the Channel from where you would like to remove a member. This can be retrieved from the [List Channels API](https://marketplace.zoom.us/docs/api-reference/zoom-api/chat-channels/getchannels). | 
 **member_id** | **String**| Email address of the member whom you would like to be remove from the channel. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_channel**
> Object update_channel(channel_id, opts)

Update a Channel

Zoom chat channels allow users to communicate via chat in private or public channels. Use this API to update the name of a specific channel that you created.   <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope:** `chat_channel:write` <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatChannelsApi.new

channel_id = 'channel_id_example' # String | Channel Id.

opts = { 
  body: ZoomUs::Body8.new # Body8 | 
}

begin
  #Update a Channel
  result = api_instance.update_channel(channel_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatChannelsApi->update_channel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| Channel Id. | 
 **body** | [**Body8**](Body8.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



