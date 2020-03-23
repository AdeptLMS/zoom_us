# ZoomUs::ChatbotMessagesApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_a_chatbot_message**](ChatbotMessagesApi.md#delete_a_chatbot_message) | **DELETE** /im/chat/messages/{message_id} | Delete a Chatbot Message
[**edit_chatbot_message**](ChatbotMessagesApi.md#edit_chatbot_message) | **PUT** /im/chat/messages/{message_id} | Edit a Chatbot Message
[**sendchatbot**](ChatbotMessagesApi.md#sendchatbot) | **POST** /im/chat/messages | Send Chatbot Messages


# **delete_a_chatbot_message**
> InlineResponse20058 delete_a_chatbot_message(message_id, opts)

Delete a Chatbot Message

Delete a message that was sent by your chatbot app.   **Scopes:** `imchat:bot`<br>  **Authorization Flow**: Client Credentials Flow<br><br> To get authorized, make a POST request to `/oauth/token` endpoint with grant type as `client_credentials`. <br>Use `https://api.zoom.us/oauth/token?grant_type=client_credentials` as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. `Basic base64Encode({client_id}:{client_sceret})`<br><br> Next, use the token received (access_token) as a bearer token while making the DELETE /im/chat/messages/{message_id} request to delete a message.<br><br> Learn more about how to authotize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: Client Credentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatbotMessagesApi.new

message_id = 'message_id_example' # String | 

opts = { 
  body: ZoomUs::Body41.new # Body41 | 
}

begin
  #Delete a Chatbot Message
  result = api_instance.delete_a_chatbot_message(message_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatbotMessagesApi->delete_a_chatbot_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**|  | 
 **body** | [**Body41**](Body41.md)|  | [optional] 

### Return type

[**InlineResponse20058**](InlineResponse20058.md)

### Authorization

[Client Credentials](../README.md#Client Credentials)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **edit_chatbot_message**
> InlineResponse20057 edit_chatbot_message(message_id, opts)

Edit a Chatbot Message

Edit a message that was [sent](https://marketplace.zoom.us/docs/api-reference/zoom-api/im-chat/sendchatbot) by your Chatbot app.<br> After sending a message using the Send Chatbot Message API, you must store the messageId returned in the response so that you can make edits to the associated message using this API.  **Scope:** `imchat:bot`<br><br> **Authorization Flow**: Client Credentials Flow<br><br> To get authorized, make a POST request to `/oauth/token` endpoint with grant type as `client_credentials`. <br>Use `https://api.zoom.us/oauth/token?grant_type=client_credentials` as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. `Basic base64Encode({client_id}:{client_sceret})`<br><br> Next, use the token received (access_token) as a bearer token while making the PUT /im/chat/messages/{message_id} request to edit a chatbot message.<br><br> Learn more about how to authotize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: Client Credentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatbotMessagesApi.new

message_id = 'message_id_example' # String | Unique Identifier of the message that needs to be updated. This should be retrieved from the response of [Send Chatbot Message API](https://marketplace.zoom.us/docs/api-reference/zoom-api/im-chat/sendchatbot).

opts = { 
  body: ZoomUs::Body40.new # Body40 | 
}

begin
  #Edit a Chatbot Message
  result = api_instance.edit_chatbot_message(message_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatbotMessagesApi->edit_chatbot_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Unique Identifier of the message that needs to be updated. This should be retrieved from the response of [Send Chatbot Message API](https://marketplace.zoom.us/docs/api-reference/zoom-api/im-chat/sendchatbot). | 
 **body** | [**Body40**](Body40.md)|  | [optional] 

### Return type

[**InlineResponse20057**](InlineResponse20057.md)

### Authorization

[Client Credentials](../README.md#Client Credentials)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **sendchatbot**
> sendchatbot(opts)

Send Chatbot Messages

Send chatbot messages from your marketplace chatbot app.<br><br> **Scopes:** `imchat:bot`<br> **Authorization Flow**: Client Credentials Flow<br><br> To get authorized, make a POST request to `/oauth/token` endpoint with grant type as `client_credentials`. <br>Use `https://api.zoom.us/oauth/token?grant_type=client_credentials` as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. `Basic base64Encode({client_id}:{client_sceret})`<br><br> Next, use the token recieved (access_token) as a bearer token while making the POST /im/chat/messages request to send chatbot messages.<br><br> Learn more about how to authorize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: Client Credentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ChatbotMessagesApi.new

opts = { 
  body: ZoomUs::Body39.new # Body39 | 
}

begin
  #Send Chatbot Messages
  api_instance.sendchatbot(opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling ChatbotMessagesApi->sendchatbot: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body39**](Body39.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[Client Credentials](../README.md#Client Credentials)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



