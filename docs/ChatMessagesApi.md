# ZoomUs::ChatMessagesApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_chat_message**](ChatMessagesApi.md#delete_chat_message) | **DELETE** /chat/users/me/messages/{messageId} | Delete a Message
[**edit_message**](ChatMessagesApi.md#edit_message) | **PUT** /chat/users/me/messages/{messageId} | Update a Message
[**get_chat_messages**](ChatMessagesApi.md#get_chat_messages) | **GET** /chat/users/{userId}/messages | List User&#39;s Chat Messages
[**senda_chat_message**](ChatMessagesApi.md#senda_chat_message) | **POST** /chat/users/me/messages | Send a Chat Message


# **delete_chat_message**
> Object delete_chat_message(message_id, opts)

Delete a Message

Delete a chat message that you previously sent to a contact or a channel. In the query parameter, you must provide either of the following:<br> * `to_contact`: The email address of the contact to whom you sent the message. Use this parameter to delete a message sent to an individual contact in Zoom. * `to_channel`: The channel ID of the channel where you sent the message. Use this parameter to delete a message sent to a channel in Zoom.  <p style=\"background-color:#e1f5fe;color:#01579b;padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope:** `chat_message:write`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatMessagesApi.new

message_id = 'message_id_example' # String | Message ID

opts = { 
  to_contact: 'to_contact_example', # String | The userId or email address of a chat contact to whom you previously sent the message.  Note: You must provide either `to_contact` or `to_channel` as a query parameter to delete a message that was previously sent to either an individual or a chat channel respectively. 
  to_channel: 'to_channel_example' # String | The channel Id of the channel where you would like to send the message.  You must provide either `to_contact` or `to_channel` as a query parameter to delete a message that was previously sent to either an individual or a chat channel 
}

begin
  #Delete a Message
  result = api_instance.delete_chat_message(message_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatMessagesApi->delete_chat_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message ID | 
 **to_contact** | **String**| The userId or email address of a chat contact to whom you previously sent the message.  Note: You must provide either &#x60;to_contact&#x60; or &#x60;to_channel&#x60; as a query parameter to delete a message that was previously sent to either an individual or a chat channel respectively.  | [optional] 
 **to_channel** | **String**| The channel Id of the channel where you would like to send the message.  You must provide either &#x60;to_contact&#x60; or &#x60;to_channel&#x60; as a query parameter to delete a message that was previously sent to either an individual or a chat channel  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml



# **edit_message**
> edit_message(message_id, opts)

Update a Message

Each chat message has a unique identifier. Use this API to edit a chat message that you previously sent to either a contact or a channel in Zoom by providing the ID of the message as the value of the `messageId` parameter. The ID can be retrieved from List User's Chat Messages API. Additionally, as a query parameter, you must provide either the **email address** of the contact or the **Channel ID** of the channel where the message was sent.   <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b> This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  **Scope:** `chat_message:write` <br>      

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatMessagesApi.new

message_id = 'message_id_example' # String | Message ID: Unique Identifier of the message.

opts = { 
  body: ZoomUs::Body6.new # Body6 | 
}

begin
  #Update a Message
  api_instance.edit_message(message_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatMessagesApi->edit_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message ID: Unique Identifier of the message. | 
 **body** | [**Body6**](Body6.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_chat_messages**
> InlineResponse2006 get_chat_messages(user_id, opts)

List User's Chat Messages

A Zoom user can have conversations with other Zoom users via chat. Use this API to list the current user's chat messages between the user and an individual contact or a chat channel.<br> In the query parameter, you must provide either of the following:<br> * `to_contact`: The email address of the contact with whom the user conversed by sending/receiving messages. * `to_channel`: The channel ID of the channel to/from which the user has sent and/or received messages. <br> **Specify a date** in the `date` query parameter to view messages from that date. If a date is not provided, the default value for the query will be the **current date**.<br> <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"><b>Note: </b>This API only supports <b>user-managed</b> <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br>  <br>**Scopes:** `chat_message:read`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatMessagesApi.new

user_id = 'user_id_example' # String | 

opts = { 
  to_contact: 'to_contact_example', # String | The email address of a chat contact with whom the current user chatted. Messages that were sent and/or received between the user and the contact is displayed.  Note: You must provide either `contact` or `channel` as a query parameter to retrieve messages either from an individual or a chat channel. 
  to_channel: 'to_channel_example', # String | The channel Id of a channel inside which current user had chat converstations. Messages that were sent and/or received between the user and the channel is displayed.  Note: You must provide either `contact` or `channel` as a query parameter to retrieve messages either from an individual or a chat channel. 
  date_: Date.parse('2013-10-20'), # Date | The query date for which you would like to get the chat messages.
  page_size: 10, # Integer | The number of records returned with a single API call. 
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #List User's Chat Messages
  result = api_instance.get_chat_messages(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatMessagesApi->get_chat_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 
 **to_contact** | **String**| The email address of a chat contact with whom the current user chatted. Messages that were sent and/or received between the user and the contact is displayed.  Note: You must provide either &#x60;contact&#x60; or &#x60;channel&#x60; as a query parameter to retrieve messages either from an individual or a chat channel.  | [optional] 
 **to_channel** | **String**| The channel Id of a channel inside which current user had chat converstations. Messages that were sent and/or received between the user and the channel is displayed.  Note: You must provide either &#x60;contact&#x60; or &#x60;channel&#x60; as a query parameter to retrieve messages either from an individual or a chat channel.  | [optional] 
 **date_** | **Date**| The query date for which you would like to get the chat messages. | [optional] 
 **page_size** | **Integer**| The number of records returned with a single API call.  | [optional] [default to 10]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **senda_chat_message**
> InlineResponse2011 senda_chat_message(opts)

Send a Chat Message

Send chat messages on Zoom to either an individual user who is in your contact list or to a [channel](https://support.zoom.us/hc/en-us/articles/200912909-Getting-Started-With-Channels-Group-Messaging-) of which you are a member. To send a message to a contact, provide the contact's email address in the `to_contact` field. Similary, to send a message to a channel, provide the Channel Id of the Channel in `to_channel` field.<br>  <br>**Scopes:** `chat_message:write`<br>   <br>  <p style=\"background-color:#e1f5fe; color:#01579b; padding:8px\"> <b>Note: </b>This API only supports <b>user-managed</b>  <a href=\"https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\">OAuth app</a>.</p><br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatMessagesApi.new

opts = { 
  body: ZoomUs::Body5.new # Body5 | 
}

begin
  #Send a Chat Message
  result = api_instance.senda_chat_message(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatMessagesApi->senda_chat_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body5**](Body5.md)|  | [optional] 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



