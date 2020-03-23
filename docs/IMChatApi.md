# ZoomUs::IMChatApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**im_chat_messages**](IMChatApi.md#im_chat_messages) | **GET** /im/chat/sessions/{sessionId} | Retrieve IM Chat Messages
[**im_chat_sessions**](IMChatApi.md#im_chat_sessions) | **GET** /im/chat/sessions | Get IM Chat Sessions
[**listimmessages**](IMChatApi.md#listimmessages) | **GET** /im/users/{userId}/chat/messages | Get User’s IM Messages
[**sendimmessages**](IMChatApi.md#sendimmessages) | **POST** /im/users/me/chat/messages | Send IM messages


# **im_chat_messages**
> InlineResponse20021 im_chat_messages(session_id, from, to, opts)

Retrieve IM Chat Messages

Retrieve IM chat messages for a specified period of time. <aside>Note: This API only supports oauth2.</aside><br><br>  **Scopes:** `imchat:read`<br>  <br>  <p style=\"background-color:#ffffcc;\"><strong>API End of Life:</strong> This API will no longer be supported after April, 2020. <a href=\"https://marketplace.zoom.us/docs/deprecated-scopes\">Learn more</a>.</p><br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMChatApi.new

session_id = 'session_id_example' # String | IM chat session ID.

from = Date.parse('2013-10-20') # Date | Start date in 'yyyy-mm-dd' format. The date range defined by the \"from\" and \"to\" parameters should only be one month as the report includes only one month worth of data at once.

to = Date.parse('2013-10-20') # Date | End date.

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #Retrieve IM Chat Messages
  result = api_instance.im_chat_messages(session_id, from, to, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMChatApi->im_chat_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **session_id** | **String**| IM chat session ID. | 
 **from** | **Date**| Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once. | 
 **to** | **Date**| End date. | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **im_chat_sessions**
> InlineResponse20020 im_chat_sessions(from, to, opts)

Get IM Chat Sessions

Retrieve IM Chat sessions for a specified period of time. <aside>Note: This API only supports Oauth2.</aside><br>  <p style=\"background-color:#ffffcc;\"><strong>API End of Life:</strong> This API will no longer be supported after April, 2020. <a href=\"https://marketplace.zoom.us/docs/deprecated-scopes\">Learn more</a>.</p><br>   **Scopes:** `imchat:read, imchat:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMChatApi.new

from = Date.parse('2013-10-20') # Date | Start date in 'yyyy-mm-dd' format. The date range defined by the \"from\" and \"to\" parameters should only be one month as the report includes only one month worth of data at once.

to = Date.parse('2013-10-20') # Date | End date.

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #Get IM Chat Sessions
  result = api_instance.im_chat_sessions(from, to, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMChatApi->im_chat_sessions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once. | 
 **to** | **Date**| End date. | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **listimmessages**
> InlineResponse20060 listimmessages(user_id, opts)

Get User’s IM Messages

Get IM Chat messages for a specified period of time. <aside>Note: This API only supports Oauth2.</aside><br><br> **Scopes:** `imchat:read` <p style=\"background-color:#ffffcc;\"><strong>API End of Life:</strong> This API will no longer be supported after April, 2020. <a href=\"https://marketplace.zoom.us/docs/deprecated-scopes\">Learn more</a>.</p><br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMChatApi.new

user_id = 'user_id_example' # String | The user ID or email address.

opts = { 
  chat_user: 'chat_user_example', # String | Chat user's ID or email address.
  channel: 'channel_example', # String | IM Channel's ID.
  date: 'date_example', # String | IM message's query date time, format as yyyy-MM-dd.
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #Get User’s IM Messages
  result = api_instance.listimmessages(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMChatApi->listimmessages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address. | 
 **chat_user** | **String**| Chat user&#39;s ID or email address. | [optional] 
 **channel** | **String**| IM Channel&#39;s ID. | [optional] 
 **date** | **String**| IM message&#39;s query date time, format as yyyy-MM-dd. | [optional] 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse20060**](InlineResponse20060.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **sendimmessages**
> InlineResponse20122 sendimmessages(opts)

Send IM messages

Send chat message to a user. <aside>Note: This API only supports OAuth 2.0.</aside><br><br>**Scope:** `imchat:write` <p style=\"background-color:#ffffcc;\"><strong>API End of Life:</strong> This API will no longer be supported after April, 2020. <a href=\"https://marketplace.zoom.us/docs/deprecated-scopes\">Learn more</a>.</p><br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMChatApi.new

opts = { 
  body: ZoomUs::Body44.new, # Body44 | 
  chat_user: 'chat_user_example' # String | The email address (registered with Zoom) or the userId of the chat user.
}

begin
  #Send IM messages
  result = api_instance.sendimmessages(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMChatApi->sendimmessages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body44**](Body44.md)|  | [optional] 
 **chat_user** | **String**| The email address (registered with Zoom) or the userId of the chat user. | [optional] 

### Return type

[**InlineResponse20122**](InlineResponse20122.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



