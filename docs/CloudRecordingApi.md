# ZoomUs::CloudRecordingApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_cloud_recording**](CloudRecordingApi.md#get_account_cloud_recording) | **GET** /accounts/{accountId}/recordings | List Recordings of an Account
[**meeting_recording_registrant_create**](CloudRecordingApi.md#meeting_recording_registrant_create) | **POST** /meetings/{meetingId}/recordings/registrants | Create a Recording Registrant
[**meeting_recording_registrant_status**](CloudRecordingApi.md#meeting_recording_registrant_status) | **PUT** /meetings/{meetingId}/recordings/registrants/status | Update Recording Registrant&#39;s Status
[**meeting_recording_registrants**](CloudRecordingApi.md#meeting_recording_registrants) | **GET** /meetings/{meetingId}/recordings/registrants | List Recording Registrants
[**recording_delete**](CloudRecordingApi.md#recording_delete) | **DELETE** /meetings/{meetingId}/recordings | Delete Meeting Recordings
[**recording_delete_one**](CloudRecordingApi.md#recording_delete_one) | **DELETE** /meetings/{meetingId}/recordings/{recordingId} | Delete a Meeting Recording File
[**recording_get**](CloudRecordingApi.md#recording_get) | **GET** /meetings/{meetingId}/recordings | Get Meeting Recordings
[**recording_registrant_question_update**](CloudRecordingApi.md#recording_registrant_question_update) | **PATCH** /meetings/{meetingId}/recordings/registrants/questions | Update Registration Questions
[**recording_registrants_questions_get**](CloudRecordingApi.md#recording_registrants_questions_get) | **GET** /meetings/{meetingId}/recordings/registrants/questions | Get Registration Questions
[**recording_setting_update**](CloudRecordingApi.md#recording_setting_update) | **GET** /meetings/{meetingId}/recordings/settings | Get Meeting Recording Settings
[**recording_settings_update**](CloudRecordingApi.md#recording_settings_update) | **PATCH** /meetings/{meetingId}/recordings/settings | Update Meeting Recording Settings
[**recording_status_update**](CloudRecordingApi.md#recording_status_update) | **PUT** /meetings/{meetingId}/recordings/status | Recover Meeting Recordings
[**recording_status_update_one**](CloudRecordingApi.md#recording_status_update_one) | **PUT** /meetings/{meetingId}/recordings/{recordingId}/status | Recover a Single Recording
[**recordings_list**](CloudRecordingApi.md#recordings_list) | **GET** /users/{userId}/recordings | List All Recordings


# **get_account_cloud_recording**
> InlineResponse20073 get_account_cloud_recording(account_id, opts)

List Recordings of an Account

List [Cloud Recordings](https://support.zoom.us/hc/en-us/articles/203741855-Cloud-Recording) available on an Account.  **Prerequisites**:<br> * A Pro or a higher paid plan with Cloud Recording option enabled.<br> **Scopes**: `recording:read:admin` or `account:read:admin`  If the scope `recording:read:admin` is used, the Account ID of the Account must be provided in the `accountId` path parameter to list recordings that belong to the Account. This scope only works for Sub Accounts.   To list recordings of a Master Account, the scope must be `account:read:admin` and the value of `accountId` should be `me`.<br> <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

account_id = 'account_id_example' # String |

opts = {
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  from: ::DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The start date for the monthly range for which you would like to retrieve recordings. The maximum range can be a month. The month should fall within the past six months period from the date of query.
  to: ::DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The end date for the monthly range for which you would like to retrieve recordings. The maximum range can be a month. The month should fall within the past six months period from the date of query.
}

begin
  #List Recordings of an Account
  result = api_instance.get_account_cloud_recording(account_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->get_account_cloud_recording: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  |
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional]
 **from** | **DateTime**| The start date for the monthly range for which you would like to retrieve recordings. The maximum range can be a month. The month should fall within the past six months period from the date of query. | [optional]
 **to** | **DateTime**| The end date for the monthly range for which you would like to retrieve recordings. The maximum range can be a month. The month should fall within the past six months period from the date of query. | [optional]

### Return type

[**InlineResponse20073**](InlineResponse20073.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_recording_registrant_create**
> InlineResponse20113 meeting_recording_registrant_create(meeting_id, body)

Create a Recording Registrant

Cloud Recordings of past Zoom Meetings can be made [on-demand](https://support.zoom.us/hc/en-us/articles/360000488283-On-demand-Recordings). Users should be [registered](https://marketplace.zoom.us/docs/api-reference/zoom-api/cloud-recording/meetingrecordingregistrantcreate) to view these recordings.  Use this API to register a user to gain access to **On-demand Cloud Recordings** of a past meeting.<br> **Scopes:** `recording:write:admin`, `recording:write`.<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::object.new # object |


begin
  #Create a Recording Registrant
  result = api_instance.meeting_recording_registrant_create(meeting_id, body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->meeting_recording_registrant_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. |
 **body** | [**object**](.md)|  |

### Return type

[**InlineResponse20113**](InlineResponse20113.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_recording_registrant_status**
> meeting_recording_registrant_status(meeting_id, body)

Update Recording Registrant's Status

A registrant can either be approved or denied from viewing the [on-demand](https://support.zoom.us/hc/en-us/articles/360000488283-On-demand-Recordings) recording.  Use this API to update a registrant's status.  **Scopes:** `recording:write:admin`, `recording:write`<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 56 # Integer | The meeting ID.

body = ZoomUs::Body27.new # Body27 |


begin
  #Update Recording Registrant's Status
  api_instance.meeting_recording_registrant_status(meeting_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->meeting_recording_registrant_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. |
 **body** | [**Body27**](Body27.md)|  |

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **meeting_recording_registrants**
> RegistrationList1 meeting_recording_registrants(meeting_id, opts)

List Recording Registrants

Cloud Recordings of past Zoom Meetings can be made [on-demand](https://support.zoom.us/hc/en-us/articles/360000488283-On-demand-Recordings). Users should be [registered](https://marketplace.zoom.us/docs/api-reference/zoom-api/cloud-recording/meetingrecordingregistrantcreate) to view these recordings.  Use this API to list registrants of **On-demand Cloud Recordings** of a past meeting.<br> **Scopes:** `recording:read:admin`, `recording:read`.<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 56 # Integer | The meeting ID.

opts = {
  status: 'approved', # String | The registrant status:<br>`pending` - Registrant's status is pending.<br>`approved` - Registrant's status is approved.<br>`denied` - Registrant's status is denied.
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List Recording Registrants
  result = api_instance.meeting_recording_registrants(meeting_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->meeting_recording_registrants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **Integer**| The meeting ID. |
 **status** | **String**| The registrant status:&lt;br&gt;&#x60;pending&#x60; - Registrant&#39;s status is pending.&lt;br&gt;&#x60;approved&#x60; - Registrant&#39;s status is approved.&lt;br&gt;&#x60;denied&#x60; - Registrant&#39;s status is denied. | [optional] [default to approved]
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**RegistrationList1**](RegistrationList1.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_delete**
> recording_delete(meeting_id, opts)

Delete Meeting Recordings

Delete all recording files of a meeting.<br><br>  **Scopes:** `recording:write:admin` `recording:write`<br> <br> **Prerequisites**: * Cloud Recording should be enabled on the user's account.<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.

opts = {
  action: 'trash' # String | The recording delete actions:<br>`trash` - Move recording to trash.<br>`delete` - Delete recording permanently.
}

begin
  #Delete Meeting Recordings
  api_instance.recording_delete(meeting_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |
 **action** | **String**| The recording delete actions:&lt;br&gt;&#x60;trash&#x60; - Move recording to trash.&lt;br&gt;&#x60;delete&#x60; - Delete recording permanently. | [optional] [default to trash]

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_delete_one**
> recording_delete_one(meeting_id, recording_id, opts)

Delete a Meeting Recording File

Delete a sprecific recording file from a meeting.<br><br> **Scopes**: `recording:write:admin` `recording:write`<br>  <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.

recording_id = 'recording_id_example' # String | The recording ID.

opts = {
  action: 'trash' # String | The recording delete actions:<br>`trash` - Move recording to trash.<br>`delete` - Delete recording permanently.
}

begin
  #Delete a Meeting Recording File
  api_instance.recording_delete_one(meeting_id, recording_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_delete_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |
 **recording_id** | **String**| The recording ID. |
 **action** | **String**| The recording delete actions:&lt;br&gt;&#x60;trash&#x60; - Move recording to trash.&lt;br&gt;&#x60;delete&#x60; - Delete recording permanently. | [optional] [default to trash]

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_get**
> Object recording_get(meeting_id)

Get Meeting Recordings

Get all the [recordings](https://support.zoom.us/hc/en-us/articles/203741855-Cloud-Recording#h_7420acb5-1897-4061-87b4-5b76e99c03b4) from a meeting.<br><br> **Scopes:** `recording:read:admin` `recording:read`<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.


begin
  #Get Meeting Recordings
  result = api_instance.recording_get(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_registrant_question_update**
> recording_registrant_question_update(meeting_id, body)

Update Registration Questions

For [on-demand](https://support.zoom.us/hc/en-us/articles/360000488283-On-demand-Recordings) meeting recordings, you can include fields with questions that will be shown to registrants when they register to view the recording.  Use this API to update registration questions that are to be answered by users while registering to view a recording.<br> **Scopes:** `recording:write:admin`, `recording:write`<br> <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.

body = ZoomUs::object.new # object | Recording Registrant Questions


begin
  #Update Registration Questions
  api_instance.recording_registrant_question_update(meeting_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_registrant_question_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |
 **body** | [**object**](.md)| Recording Registrant Questions |

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_registrants_questions_get**
> RecordingRegistrantQuestions recording_registrants_questions_get(meeting_id)

Get Registration Questions

For [on-demand](https://support.zoom.us/hc/en-us/articles/360000488283-On-demand-Recordings) meeting recordings, you can include fields with questions that will be shown to registrants when they register to view the recording.  Use this API to retrieve a list of questions that are displayed for users to complete when registering to view the recording of a specific meeting.<br> **Scopes:** `recording:read:admin`, `recording:read`<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.


begin
  #Get Registration Questions
  result = api_instance.recording_registrants_questions_get(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_registrants_questions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |

### Return type

[**RecordingRegistrantQuestions**](RecordingRegistrantQuestions.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_setting_update**
> RecordingSettings recording_setting_update(meeting_id)

Get Meeting Recording Settings

Retrieve settings applied to a meeting's [Cloud Recording](https://support.zoom.us/hc/en-us/articles/203741855-Cloud-Recording).<br><br> **Scopes**: `recording:read:admin` `recording:read`<br>  <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.


begin
  #Get Meeting Recording Settings
  result = api_instance.recording_setting_update(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_setting_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |

### Return type

[**RecordingSettings**](RecordingSettings.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_settings_update**
> recording_settings_update(meeting_id, body)

Update Meeting Recording Settings

Update settings applied to a meeting's [Cloud Recording](https://support.zoom.us/hc/en-us/articles/203741855-Cloud-Recording)<br><br> **Scopes**: `recording:write:admin` `recording:write`<br>  <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.

body = ZoomUs::RecordingSettings1.new # RecordingSettings1 | Meeting recording Settings


begin
  #Update Meeting Recording Settings
  api_instance.recording_settings_update(meeting_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_settings_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |
 **body** | [**RecordingSettings1**](RecordingSettings1.md)| Meeting recording Settings |

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_status_update**
> recording_status_update(meeting_id, body)

Recover Meeting Recordings

Zoom allows users to recover recordings from trash for up to 30 days from the deletion date. Use this API to recover all deleted [Cloud Recordings](https://support.zoom.us/hc/en-us/articles/203741855-Cloud-Recording) of a specific meeting.<br><br> **Scopes**: `recording:write:admin` `recording:write`<br>  <br> **Prerequisites**:<br> * A Pro user with Cloud Recording enabled.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.

body = ZoomUs::Body25.new # Body25 |


begin
  #Recover Meeting Recordings
  api_instance.recording_status_update(meeting_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_status_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |
 **body** | [**Body25**](Body25.md)|  |

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recording_status_update_one**
> recording_status_update_one(meeting_id, recording_id, body)

Recover a Single Recording

Zoom allows users to recover recordings from trash for up to 30 days from the deletion date. Use this API to recover a single recording file from the meeting.<br> **Scopes:** `recording:write:admin` `recording:write`<br>  <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \"/\" or contains \"//\" (example: \"/ajXp112QmuoKj4854875==\"), you must **double encode** the UUID before making an API request.

recording_id = 'recording_id_example' # String | The recording ID.

body = ZoomUs::Body26.new # Body26 |


begin
  #Recover a Single Recording
  api_instance.recording_status_update_one(meeting_id, recording_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recording_status_update_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If the meeting ID is provided instead of UUID,the response will be for the latest meeting instance. If a UUID starts with \&quot;/\&quot; or contains \&quot;//\&quot; (example: \&quot;/ajXp112QmuoKj4854875&#x3D;&#x3D;\&quot;), you must **double encode** the UUID before making an API request.  |
 **recording_id** | **String**| The recording ID. |
 **body** | [**Body26**](Body26.md)|  |

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **recordings_list**
> RecordingList recordings_list(user_id, opts)

List All Recordings

When a user records a meeting by choosing the **Record to the Cloud** option, the video, audio, and chat text are recorded in the Zoom cloud.   Use this API to list all [Cloud recordings](https://support.zoom.us/hc/en-us/articles/203741855-Cloud-Recording) of a user.<br><br> **Scopes:** `recording:read:admin` `recording:read`<br>  <br> **Prerequisites:**  * Pro or a higher plan. * Cloud Recording must be enabled on the user's account.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CloudRecordingApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

opts = {
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  mc: 'false', # String | Query Metadata of Recording if an On-Premise Meeting Connector was used for the meeting.
  trash: false, # BOOLEAN | Query trash. `true`: List recordings from trash.<br> `false`: Do not list recordings from the trash.<br> The default value is `false`. If you set it to `true`, you can use the `trash_type` property to indicate the type of Cloud recording that you need to retrieve.
  from: Date.parse('2013-10-20'), # Date | Start date in 'yyyy-mm-dd' format. (Within 6 month range)
  to: Date.parse('2013-10-20'), # Date | End date in 'yyyy-mm-dd' format. (Within 6 month range)
  trash_type: 'meeting_recordings' # String | The type of Cloud recording that you would like to retrieve from the trash. The value can be one of the following:<br>     `meeting_recordings`: List all meeting recordings from the trash.<br>     `recording_file`: List all individual recording files from the trash.
}

begin
  #List All Recordings
  result = api_instance.recordings_list(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CloudRecordingApi->recordings_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. |
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional]
 **mc** | **String**| Query Metadata of Recording if an On-Premise Meeting Connector was used for the meeting. | [optional] [default to false]
 **trash** | **BOOLEAN**| Query trash. &#x60;true&#x60;: List recordings from trash.&lt;br&gt; &#x60;false&#x60;: Do not list recordings from the trash.&lt;br&gt; The default value is &#x60;false&#x60;. If you set it to &#x60;true&#x60;, you can use the &#x60;trash_type&#x60; property to indicate the type of Cloud recording that you need to retrieve.  | [optional] [default to false]
 **from** | **Date**| Start date in &#39;yyyy-mm-dd&#39; format. (Within 6 month range) | [optional]
 **to** | **Date**| End date in &#39;yyyy-mm-dd&#39; format. (Within 6 month range) | [optional]
 **trash_type** | **String**| The type of Cloud recording that you would like to retrieve from the trash. The value can be one of the following:&lt;br&gt;     &#x60;meeting_recordings&#x60;: List all meeting recordings from the trash.&lt;br&gt;     &#x60;recording_file&#x60;: List all individual recording files from the trash.  | [optional] [default to meeting_recordings]

### Return type

[**RecordingList**](RecordingList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



