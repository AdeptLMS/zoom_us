# ZoomUs::MeetingsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_past_meeting_files**](MeetingsApi.md#list_past_meeting_files) | **GET** /past_meetings/{meetingId}/files | List Past Meeting Files
[**list_past_meeting_polls**](MeetingsApi.md#list_past_meeting_polls) | **GET** /past_meetings/{meetingId}/polls | List Past Meeting&#39;s Poll Results
[**meeting**](MeetingsApi.md#meeting) | **GET** /meetings/{meetingId} | Get a Meeting
[**meeting_create**](MeetingsApi.md#meeting_create) | **POST** /users/{userId}/meetings | Create a Meeting
[**meeting_delete**](MeetingsApi.md#meeting_delete) | **DELETE** /meetings/{meetingId} | Delete a Meeting
[**meeting_invitation**](MeetingsApi.md#meeting_invitation) | **GET** /meetings/{meetingId}/invitation | Get Meeting Invitation
[**meeting_live_stream_status_update**](MeetingsApi.md#meeting_live_stream_status_update) | **PATCH** /meetings/{meetingId}/livestream/status | Update Live Stream Status
[**meeting_live_stream_update**](MeetingsApi.md#meeting_live_stream_update) | **PATCH** /meetings/{meetingId}/livestream | Update Live Stream
[**meeting_poll_create**](MeetingsApi.md#meeting_poll_create) | **POST** /meetings/{meetingId}/polls | Create a Meeting Poll
[**meeting_poll_delete**](MeetingsApi.md#meeting_poll_delete) | **DELETE** /meetings/{meetingId}/polls/{pollId} | Delete a Meeting Poll
[**meeting_poll_get**](MeetingsApi.md#meeting_poll_get) | **GET** /meetings/{meetingId}/polls/{pollId} | Get a Meeting Poll
[**meeting_poll_update**](MeetingsApi.md#meeting_poll_update) | **PUT** /meetings/{meetingId}/polls/{pollId} | Update a Meeting Poll
[**meeting_polls**](MeetingsApi.md#meeting_polls) | **GET** /meetings/{meetingId}/polls | List Meeting Polls
[**meeting_registrant_create**](MeetingsApi.md#meeting_registrant_create) | **POST** /meetings/{meetingId}/registrants | Add Meeting Registrant
[**meeting_registrant_question_update**](MeetingsApi.md#meeting_registrant_question_update) | **PATCH** /meetings/{meetingId}/registrants/questions | Update Registration Questions
[**meeting_registrant_status**](MeetingsApi.md#meeting_registrant_status) | **PUT** /meetings/{meetingId}/registrants/status | Update Meeting Registrant Status
[**meeting_registrants**](MeetingsApi.md#meeting_registrants) | **GET** /meetings/{meetingId}/registrants | List Meeting Registrants
[**meeting_registrants_questions_get**](MeetingsApi.md#meeting_registrants_questions_get) | **GET** /meetings/{meetingId}/registrants/questions | List Registration Questions 
[**meeting_status**](MeetingsApi.md#meeting_status) | **PUT** /meetings/{meetingId}/status | Update Meeting Status
[**meeting_update**](MeetingsApi.md#meeting_update) | **PATCH** /meetings/{meetingId} | Update a Meeting
[**meetings**](MeetingsApi.md#meetings) | **GET** /users/{userId}/meetings | List Meetings
[**past_meeting_details**](MeetingsApi.md#past_meeting_details) | **GET** /past_meetings/{meetingUUID} | Get Past Meeting Details
[**past_meeting_participants**](MeetingsApi.md#past_meeting_participants) | **GET** /past_meetings/{meetingUUID}/participants | Get Past Meeting Participants
[**past_meetings**](MeetingsApi.md#past_meetings) | **GET** /past_meetings/{meetingId}/instances | List Ended Meeting Instances


# **list_past_meeting_files**
> InlineResponse20084 list_past_meeting_files(meeting_id)

List Past Meeting Files

List files sent via in-meeting chat during a meeting. The in-meeting files are deleted after 24 hours of the meeting completion time.  <br><br> **Scope:** `meeting:read`, `meeting:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.


begin
  #List Past Meeting Files
  result = api_instance.list_past_meeting_files(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->list_past_meeting_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 

### Return type

[**InlineResponse20084**](InlineResponse20084.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_past_meeting_polls**
> InlineResponse20083 list_past_meeting_polls(meeting_id)

List Past Meeting's Poll Results

[Polls](https://support.zoom.us/hc/en-us/articles/213756303-Polling-for-Meetings) allow the meeting host to survey attendees. Use this API to list poll results of a meeting.<br><br>  **Scopes**: `meeting:read:admin`, `meeting:read`<br>  **Prerequisites**:<br> * Host user type must be **Pro**. * Meeting must be a scheduled meeting. Instant meetings do not have polling features enabled.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If   meeting ID is provided, it will take the last meeting instance.


begin
  #List Past Meeting's Poll Results
  result = api_instance.list_past_meeting_polls(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->list_past_meeting_polls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If   meeting ID is provided, it will take the last meeting instance. | 

### Return type

[**InlineResponse20083**](InlineResponse20083.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting**
> InlineResponse20022 meeting(meeting_id, opts)

Get a Meeting

Retrieve the details of a meeting.<br><br> **Scopes:** `meeting:read:admin` `meeting:read`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

opts = { 
  occurrence_id: 'occurrence_id_example' # String | Meeting occurrence id
}

begin
  #Get a Meeting
  result = api_instance.meeting(meeting_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **occurrence_id** | **String**| Meeting occurrence id | [optional] 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_create**
> InlineResponse20110 meeting_create(user_id, body)

Create a Meeting

Create a meeting for a user. <br>This API has a daily rate limit of 100 requests per day. Therefore, only 100 **Create a Meeting** API requests are permitted within a 24 hour window for a user.<br>  <aside>The <code>start_url</code> of a meeting is a URL using which a host or an alternative host can start a meeting. The expiration time for the <code>start_url</code> field is two hours for all regular users.    For users created using the <code>custCreate</code> option via the [Create Users](https://marketplace.zoom.us/docs/api-reference/zoom-api/users/usercreate) API, the expiration time of the <code>start_url</code> field is 90 days.   For security reasons, the recommended way to retrieve the updated value for the <code>start_url</code> field programmatically (after expiry) is by calling the [Retrieve a Meeting API](https://marketplace.zoom.us/docs/api-reference/zoom-api/meetings/meeting) and referring to the value of the <code>start_url</code> field in the response.</aside><br><br> Scopes: `meeting:write:admin` `meeting:write`

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

body = ZoomUs::Body22.new # Body22 | Meeting object.


begin
  #Create a Meeting
  result = api_instance.meeting_create(user_id, body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **body** | [**Body22**](Body22.md)| Meeting object. | 

### Return type

[**InlineResponse20110**](InlineResponse20110.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_delete**
> meeting_delete(meeting_id, opts)

Delete a Meeting

Delete a meeting.<br><br> **Scopes:** `meeting:write:admin` `meeting:write`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

opts = { 
  occurrence_id: 'occurrence_id_example', # String | The meeting occurrence ID.
  schedule_for_reminder: true # BOOLEAN | `true`: Notify host and alternative host about the meeting cancellation via email. `false`: Do not send any email notification.
}

begin
  #Delete a Meeting
  api_instance.meeting_delete(meeting_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **occurrence_id** | **String**| The meeting occurrence ID. | [optional] 
 **schedule_for_reminder** | **BOOLEAN**| &#x60;true&#x60;: Notify host and alternative host about the meeting cancellation via email. &#x60;false&#x60;: Do not send any email notification. | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_invitation**
> MeetingInvitation meeting_invitation(meeting_id)

Get Meeting Invitation

Retrieve the meeting invite note that was sent for a specific meeting.<br><br> **Scopes:** `meeting:read:admin` `meeting:read`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.


begin
  #Get Meeting Invitation
  result = api_instance.meeting_invitation(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 

### Return type

[**MeetingInvitation**](MeetingInvitation.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_live_stream_status_update**
> meeting_live_stream_status_update(meeting_id, body)

Update Live Stream Status

Zoom allows users to [live stream a meeting](https://support.zoom.us/hc/en-us/articles/115001777826-Live-Streaming-Meetings-or-Webinars-Using-a-Custom-Service) to a custom platform. Use this API to update the status of a meeting's live stream.<br><br> **Prerequisites:**<br> * Meeting host must have a Pro license.<br> **Scopes:** `meeting:write:admin` `meeting:write`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::Body43.new # Body43 | Meeting


begin
  #Update Live Stream Status
  api_instance.meeting_live_stream_status_update(meeting_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_live_stream_status_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **body** | [**Body43**](Body43.md)| Meeting | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_live_stream_update**
> meeting_live_stream_update(meeting_id, body)

Update Live Stream

Zoom allows users to [live stream a meeting](https://support.zoom.us/hc/en-us/articles/115001777826-Live-Streaming-Meetings-or-Webinars-Using-a-Custom-Service) to a custom platform. Use this API to update a meeting's live stream information.<br><br> **Prerequisites:**<br> * Meeting host must have a Pro license.<br> **Scopes:** `meeting:write:admin` `meeting:write`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::Body42.new # Body42 | Meeting


begin
  #Update Live Stream
  api_instance.meeting_live_stream_update(meeting_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_live_stream_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **body** | [**Body42**](Body42.md)| Meeting | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_poll_create**
> InlineResponse20112 meeting_poll_create(meeting_id, body)

Create a Meeting Poll

Polls allow the meeting host to survey attendees. Use this API to create a [poll](https://support.zoom.us/hc/en-us/articles/213756303-Polling-for-Meetings) for a meeting.<br><br>  **Scopes**: `meeting:write:admin` `meeting:write`<br>    **Prerequisites**:<br> * Host user type must be **Pro**. * Polling feature should be enabled in the host's account. * Meeting must be a scheduled meeting. Instant meetings do not have polling features enabled.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::object.new # object | Meeting poll object


begin
  #Create a Meeting Poll
  result = api_instance.meeting_poll_create(meeting_id, body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_poll_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **body** | [**object**](.md)| Meeting poll object | 

### Return type

[**InlineResponse20112**](InlineResponse20112.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_poll_delete**
> meeting_poll_delete(meeting_id, poll_id)

Delete a Meeting Poll

Polls allow the meeting host to survey attendees. Use this API to delete a meeting [poll](https://support.zoom.us/hc/en-us/articles/213756303-Polling-for-Meetings).<br> **Scopes**: `meeting:write:admin` `meeting:write`<br>   **Prerequisites**:<br> * Host user type must be **Pro**. * Polling feature should be enabled in the host's account. * Meeting must be a scheduled meeting. Instant meetings do not have polling features enabled.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

poll_id = 'poll_id_example' # String | The poll ID


begin
  #Delete a Meeting Poll
  api_instance.meeting_poll_delete(meeting_id, poll_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_poll_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **poll_id** | **String**| The poll ID | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_poll_get**
> InlineResponse20112 meeting_poll_get(meeting_id, poll_id)

Get a Meeting Poll

Polls allow the meeting host to survey attendees. Use this API to get information about a specific meeting [poll](https://support.zoom.us/hc/en-us/articles/213756303-Polling-for-Meetings).<br><br> **Scopes**: `meeting:read:admin` `meeting:read`<br>     

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

poll_id = 'poll_id_example' # String | The poll ID


begin
  #Get a Meeting Poll
  result = api_instance.meeting_poll_get(meeting_id, poll_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_poll_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **poll_id** | **String**| The poll ID | 

### Return type

[**InlineResponse20112**](InlineResponse20112.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_poll_update**
> meeting_poll_update(meeting_id, poll_id, body)

Update a Meeting Poll

Polls allow the meeting host to survey attendees. Use this API to update information of a specific meeting [poll](https://support.zoom.us/hc/en-us/articles/213756303-Polling-for-Meetings)<br><br> **Scopes**: `meeting:write:admin` `meeting:write`    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

poll_id = 'poll_id_example' # String | The poll ID

body = ZoomUs::object.new # object | Meeting Poll


begin
  #Update a Meeting Poll
  api_instance.meeting_poll_update(meeting_id, poll_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_poll_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **poll_id** | **String**| The poll ID | 
 **body** | [**object**](.md)| Meeting Poll | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_polls**
> Object meeting_polls(meeting_id)

List Meeting Polls

Polls allow the meeting host to survey attendees. Use this API to list [polls](https://support.zoom.us/hc/en-us/articles/213756303-Polling-for-Meetings) of a meeting.<br><br>  **Scopes**: `meeting:read:admin` `meeting:read`<br>   **Prerequisites**:<br> * Host user type must be **Pro**. * Meeting must be a scheduled meeting. Instant meetings do not have polling features enabled.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.


begin
  #List Meeting Polls
  result = api_instance.meeting_polls(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_polls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_registrant_create**
> InlineResponse20111 meeting_registrant_create(meeting_id, body, opts)

Add Meeting Registrant

Register a participant for a meeting.<br><br> **Scopes:** `meeting:write:admin` `meeting:write`

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::object.new # object | 

opts = { 
  occurrence_ids: 'occurrence_ids_example' # String | Occurrence IDs. You can find these with the meeting get API. Multiple values separated by comma.
}

begin
  #Add Meeting Registrant
  result = api_instance.meeting_registrant_create(meeting_id, body, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_registrant_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **body** | [**object**](.md)|  | 
 **occurrence_ids** | **String**| Occurrence IDs. You can find these with the meeting get API. Multiple values separated by comma. | [optional] 

### Return type

[**InlineResponse20111**](InlineResponse20111.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_registrant_question_update**
> meeting_registrant_question_update(meeting_id, body)

Update Registration Questions

Update registration questions that will be displayed to users while [registering for a meeeting](https://support.zoom.us/hc/en-us/articles/211579443-Registration-for-Meetings).<br><br> **Scopes:** `meeting:write`, `meeting:write:admin`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::object.new # object | Meeting Registrant Questions


begin
  #Update Registration Questions
  api_instance.meeting_registrant_question_update(meeting_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_registrant_question_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **body** | [**object**](.md)| Meeting Registrant Questions | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_registrant_status**
> meeting_registrant_status(meeting_id, body, opts)

Update Meeting Registrant Status

Update a meeting registrant's status by either approving, cancelling or denying a registrant from joining the meeting.<br><br> **Scopes:** `meeting:write:admin` `meeting:write`

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::Body24.new # Body24 | 

opts = { 
  occurrence_id: 'occurrence_id_example' # String | The meeting occurrence ID.
}

begin
  #Update Meeting Registrant Status
  api_instance.meeting_registrant_status(meeting_id, body, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_registrant_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **body** | [**Body24**](Body24.md)|  | 
 **occurrence_id** | **String**| The meeting occurrence ID. | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_registrants**
> RegistrationList meeting_registrants(meeting_id, opts)

List Meeting Registrants

A host or a user with admin permission can require [registration for a Zoom meeting](https://support.zoom.us/hc/en-us/articles/211579443-Registration-for-Meetings). Use this API to list users that have registered for a meeting.<br><br> **Scopes**: `meeting:read:admin` `meeting:read`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

opts = { 
  occurrence_id: 'occurrence_id_example', # String | The meeting occurrence ID.
  status: 'approved', # String | The registrant status:<br>`pending` - Registrant's status is pending.<br>`approved` - Registrant's status is approved.<br>`denied` - Registrant's status is denied.
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List Meeting Registrants
  result = api_instance.meeting_registrants(meeting_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_registrants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **occurrence_id** | **String**| The meeting occurrence ID. | [optional] 
 **status** | **String**| The registrant status:&lt;br&gt;&#x60;pending&#x60; - Registrant&#39;s status is pending.&lt;br&gt;&#x60;approved&#x60; - Registrant&#39;s status is approved.&lt;br&gt;&#x60;denied&#x60; - Registrant&#39;s status is denied. | [optional] [default to approved]
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**RegistrationList**](RegistrationList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_registrants_questions_get**
> InlineResponse20025 meeting_registrants_questions_get(meeting_id)

List Registration Questions 

List registration questions that will be displayed to users while [registering for a meeeting](https://support.zoom.us/hc/en-us/articles/211579443-Registration-for-Meetings).<br>  **Scopes:** `meeting:read`, `meeting:read:admin`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.


begin
  #List Registration Questions 
  result = api_instance.meeting_registrants_questions_get(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_registrants_questions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_status**
> meeting_status(meeting_id, body)

Update Meeting Status

End a meeting by updating its status.<br><br> **Scopes:** `meeting:write:admin` `meeting:write`

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::Body23.new # Body23 | 


begin
  #Update Meeting Status
  api_instance.meeting_status(meeting_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **body** | [**Body23**](Body23.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_update**
> meeting_update(meeting_id, body, opts)

Update a Meeting

Update the details of a meeting.<br>This API has a rate limit of 100 requests per day. Therefore, a meeting can only be updated for a maximum of 100 times within a 24 hour window.<br> **Scopes:** `meeting:write:admin` `meeting:write`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::object.new # object | Meeting

opts = { 
  occurrence_id: 'occurrence_id_example' # String | Meeting occurrence id. Support change of agenda, start_time, duration, settings: {host_video, participant_video, join_before_host, mute_upon_entry, waiting_room, watermark, auto_recording}
}

begin
  #Update a Meeting
  api_instance.meeting_update(meeting_id, body, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meeting_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 
 **body** | [**object**](.md)| Meeting | 
 **occurrence_id** | **String**| Meeting occurrence id. Support change of agenda, start_time, duration, settings: {host_video, participant_video, join_before_host, mute_upon_entry, waiting_room, watermark, auto_recording} | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meetings**
> GroupList meetings(user_id, opts)

List Meetings

List all the meetings that were scheduled for a user (meeting host).<br><br> **Scopes:** `meeting:read:admin` `meeting:read`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

opts = { 
  type: 'live', # String | The meeting types: <br>`scheduled` - All the scheduled meetings.<br>`live` - All the live meetings.<br>`upcoming` - All the upcoming meetings.
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List Meetings
  result = api_instance.meetings(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->meetings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **type** | **String**| The meeting types: &lt;br&gt;&#x60;scheduled&#x60; - All the scheduled meetings.&lt;br&gt;&#x60;live&#x60; - All the live meetings.&lt;br&gt;&#x60;upcoming&#x60; - All the upcoming meetings. | [optional] [default to live]
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**GroupList**](GroupList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **past_meeting_details**
> InlineResponse20023 past_meeting_details(meeting_uuid)

Get Past Meeting Details

Get details on a past meeting. <br><br> **Scopes:** `meeting:read:admin` `meeting:read`  > **Note**: Please double encode your UUID when using this API if the UUID begins with a '/'or contains '//' in it.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_uuid = 'meeting_uuid_example' # String | The meeting UUID. Please double encode your UUID when using it for other API calls if the UUID begins with a '/'or contains '//' in it.


begin
  #Get Past Meeting Details
  result = api_instance.past_meeting_details(meeting_uuid)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->past_meeting_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_uuid** | **String**| The meeting UUID. Please double encode your UUID when using it for other API calls if the UUID begins with a &#39;/&#39;or contains &#39;//&#39; in it. | 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **past_meeting_participants**
> InlineResponse20024 past_meeting_participants(meeting_uuid, opts)

Get Past Meeting Participants

Retrieve information on participants from a past meeting. <br><br> **Scopes:** `meeting:read:admin` `meeting:read`  **Prerequisites:**<br> * Paid account on a Pro or higher plan.  <br> <br>  **Note**: Please double encode your UUID when using this API if the UUID begins with a '/'or contains '//' in it. 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_uuid = 'meeting_uuid_example' # String | The meeting UUID. Please double encode your UUID when using it for other API calls if the UUID begins with a '/'or contains '//' in it.

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #Get Past Meeting Participants
  result = api_instance.past_meeting_participants(meeting_uuid, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->past_meeting_participants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_uuid** | **String**| The meeting UUID. Please double encode your UUID when using it for other API calls if the UUID begins with a &#39;/&#39;or contains &#39;//&#39; in it. | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **past_meetings**
> Object past_meetings(meeting_id)

List Ended Meeting Instances

Get a list of ended meeting instances<br><br> **Scopes:** `meeting:read:admin` `meeting:read`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::MeetingsApi.new

meeting_id = 56 # Integer | The meeting ID.


begin
  #List Ended Meeting Instances
  result = api_instance.past_meetings(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling MeetingsApi->past_meetings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



