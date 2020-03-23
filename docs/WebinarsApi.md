# ZoomUs::WebinarsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tracking_sources**](WebinarsApi.md#get_tracking_sources) | **GET** /webinars/{webinarId}/tracking_sources | Get Webinar Tracking Sources
[**list_past_webinar_files**](WebinarsApi.md#list_past_webinar_files) | **GET** /past_webinars/{webinarId}/files | List Past Webinar Files
[**list_past_webinar_poll_results**](WebinarsApi.md#list_past_webinar_poll_results) | **GET** /past_webinars/{webinarId}/polls | List Past Webinar Poll Results
[**list_past_webinar_qa**](WebinarsApi.md#list_past_webinar_qa) | **GET** /past_webinars/{webinarId}/qa | List Q&amp;A of Past Webinar
[**past_webinars**](WebinarsApi.md#past_webinars) | **GET** /past_webinars/{webinarId}/instances | List Past Webinar Instances
[**webinar**](WebinarsApi.md#webinar) | **GET** /webinars/{webinarId} | Get a Webinar
[**webinar_absentees**](WebinarsApi.md#webinar_absentees) | **GET** /past_webinars/{WebinarUUID}/absentees | Get Webinar Absentees
[**webinar_create**](WebinarsApi.md#webinar_create) | **POST** /users/{userId}/webinars | Create a Webinar
[**webinar_delete**](WebinarsApi.md#webinar_delete) | **DELETE** /webinars/{webinarId} | Delete a Webinar
[**webinar_panelist_create**](WebinarsApi.md#webinar_panelist_create) | **POST** /webinars/{webinarId}/panelists | Add Panelists
[**webinar_panelist_delete**](WebinarsApi.md#webinar_panelist_delete) | **DELETE** /webinars/{webinarId}/panelists/{panelistId} | Remove a Panelist
[**webinar_panelists**](WebinarsApi.md#webinar_panelists) | **GET** /webinars/{webinarId}/panelists | List Panelists
[**webinar_panelists_delete**](WebinarsApi.md#webinar_panelists_delete) | **DELETE** /webinars/{webinarId}/panelists | Remove Panelists
[**webinar_poll_create**](WebinarsApi.md#webinar_poll_create) | **POST** /webinars/{webinarId}/polls | Create a Webinar&#39;s Poll
[**webinar_poll_delete**](WebinarsApi.md#webinar_poll_delete) | **DELETE** /webinars/{webinarId}/polls/{pollId} | Delete a Webinar Poll
[**webinar_poll_get**](WebinarsApi.md#webinar_poll_get) | **GET** /webinars/{webinarId}/polls/{pollId} | Get a Webinar Poll
[**webinar_poll_update**](WebinarsApi.md#webinar_poll_update) | **PUT** /webinars/{webinarId}/polls/{pollId} | Update a Webinar Poll
[**webinar_polls**](WebinarsApi.md#webinar_polls) | **GET** /webinars/{webinarId}/polls | List a Webinar&#39;s Polls 
[**webinar_registrant_create**](WebinarsApi.md#webinar_registrant_create) | **POST** /webinars/{webinarId}/registrants | Add a Webinar Registrant
[**webinar_registrant_get**](WebinarsApi.md#webinar_registrant_get) | **GET** /webinars/{webinarId}/registrants/{registrantId} | Get a Webinar Registrant
[**webinar_registrant_question_update**](WebinarsApi.md#webinar_registrant_question_update) | **PATCH** /webinars/{webinarId}/registrants/questions | Update Registration Questions
[**webinar_registrant_status**](WebinarsApi.md#webinar_registrant_status) | **PUT** /webinars/{webinarId}/registrants/status | Update Webinar Registrant Status
[**webinar_registrants**](WebinarsApi.md#webinar_registrants) | **GET** /webinars/{webinarId}/registrants | List Webinar Registrants
[**webinar_registrants_questions_get**](WebinarsApi.md#webinar_registrants_questions_get) | **GET** /webinars/{webinarId}/registrants/questions | List Registration Questions
[**webinar_status**](WebinarsApi.md#webinar_status) | **PUT** /webinars/{webinarId}/status | Update Webinar Status
[**webinar_update**](WebinarsApi.md#webinar_update) | **PATCH** /webinars/{webinarId} | Update a Webinar
[**webinars**](WebinarsApi.md#webinars) | **GET** /users/{userId}/webinars | List Webinars


# **get_tracking_sources**
> InlineResponse20074 get_tracking_sources(webinar_id)

Get Webinar Tracking Sources

[Webinar Registration Tracking Sources](https://support.zoom.us/hc/en-us/articles/360000315683-Webinar-Registration-Source-Tracking) allow you to see where your registrants are coming from if you share the webinar registration page in multiple platforms. You can then use the source tracking to see the number of registrants generated from each platform.<br> Use this API to list information on all the tracking sources of a Webinar.<br> **Scopes:** `webinar:read:admin`, `webinar:read`<br>  <br> **Prerequisites**:<br> * [Webinar license](https://zoom.us/webinar). * Registration must be required for the Webinar. 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.


begin
  #Get Webinar Tracking Sources
  result = api_instance.get_tracking_sources(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->get_tracking_sources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 

### Return type

[**InlineResponse20074**](InlineResponse20074.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_past_webinar_files**
> InlineResponse20084 list_past_webinar_files(webinar_id)

List Past Webinar Files

List files sent via in-meeting chat during a meeting. The in-meeting files are deleted after 24 hours of the meeting completion time.  <br><br> **Scope:** `webinar:read`, `webinar:read:admin`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 'webinar_id_example' # String | 


begin
  #List Past Webinar Files
  result = api_instance.list_past_webinar_files(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->list_past_webinar_files: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **String**|  | 

### Return type

[**InlineResponse20084**](InlineResponse20084.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_past_webinar_poll_results**
> InlineResponse20085 list_past_webinar_poll_results(webinar_id)

List Past Webinar Poll Results

The polling feature for webinar allows you to create single choice or multiple choice polling questions for your webinars. Use this API to retrieve the results for Webinar Polls of a specific Webinar.  **Prerequisites:**<br> * [Webinar license](https://zoom.us/webinar)<br> **Scopes**: `webinar:read:admin`, `webinar:read`<br>  <br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 'webinar_id_example' # String | The Webinar ID or Webinar UUID. If the webinar ID is passed, it will take the last webinar instance.


begin
  #List Past Webinar Poll Results
  result = api_instance.list_past_webinar_poll_results(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->list_past_webinar_poll_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **String**| The Webinar ID or Webinar UUID. If the webinar ID is passed, it will take the last webinar instance. | 

### Return type

[**InlineResponse20085**](InlineResponse20085.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_past_webinar_qa**
> InlineResponse20086 list_past_webinar_qa(webinar_id)

List Q&A of Past Webinar

The [Question & Answer (Q&A)](https://support.zoom.us/hc/en-us/articles/203686015-Getting-Started-with-Question-Answer) feature for Webinars allows attendees to ask questions during the Webinar and for the panelists, co-hosts and host to answer their questions.<br> Use this API to list Q&A of a specific Webinar.  **Prerequisites:**<br> * [Webinar license](https://zoom.us/webinar)<br> **Scopes**: `webinar:read:admin`, `webinar:read`<br>  <br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 'webinar_id_example' # String | The Webinar ID or Webinar UUID. If the webinar ID is passed, it will take the last webinar instance.


begin
  #List Q&A of Past Webinar
  result = api_instance.list_past_webinar_qa(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->list_past_webinar_qa: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **String**| The Webinar ID or Webinar UUID. If the webinar ID is passed, it will take the last webinar instance. | 

### Return type

[**InlineResponse20086**](InlineResponse20086.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **past_webinars**
> Object past_webinars(webinar_id)

List Past Webinar Instances

List past webinar instances.<br><br> **Scopes:** `webinar:read:admin` `webinar:read`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.


begin
  #List Past Webinar Instances
  result = api_instance.past_webinars(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->past_webinars: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar**
> InlineResponse20054 webinar(webinar_id, opts)

Get a Webinar

Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees.<br>Use this API to get details of a scheduled webinar.<br><br> **Scopes:** `webinar:read:admin` `webinar:read`<br> <br>**Prerequisites:** * Pro or higher plan with a Webinar Add-on.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

opts = { 
  occurrence_id: 'occurrence_id_example' # String | Unique Identifier that identifies an occurrence of a recurring webinar. [Recurring webinars](https://support.zoom.us/hc/en-us/articles/216354763-How-to-Schedule-A-Recurring-Webinar) can have a maximum of 50 occurrences. When you create a recurring Webinar using [Create a Webinar API](https://marketplace.zoom.us/docs/api-reference/zoom-api/webinars/webinarcreate), you can retrieve the Occurrence ID from the response of the API call.
}

begin
  #Get a Webinar
  result = api_instance.webinar(webinar_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **occurrence_id** | **String**| Unique Identifier that identifies an occurrence of a recurring webinar. [Recurring webinars](https://support.zoom.us/hc/en-us/articles/216354763-How-to-Schedule-A-Recurring-Webinar) can have a maximum of 50 occurrences. When you create a recurring Webinar using [Create a Webinar API](https://marketplace.zoom.us/docs/api-reference/zoom-api/webinars/webinarcreate), you can retrieve the Occurrence ID from the response of the API call. | [optional] 

### Return type

[**InlineResponse20054**](InlineResponse20054.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_absentees**
> RegistrationList webinar_absentees(webinar_uuid, opts)

Get Webinar Absentees

List absentees of a webinar.<br><br> **Scopes:** `webinar:read:admin` `webinar:read`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_uuid = 'webinar_uuid_example' # String | The webinar UUID. Please double encode your UUID when using it for API calls if the UUID begins with a '/'or contains '//' in it.

opts = { 
  occurrence_id: 'occurrence_id_example', # String | The meeting occurrence ID.
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #Get Webinar Absentees
  result = api_instance.webinar_absentees(webinar_uuid, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_absentees: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_uuid** | **String**| The webinar UUID. Please double encode your UUID when using it for API calls if the UUID begins with a &#39;/&#39;or contains &#39;//&#39; in it. | 
 **occurrence_id** | **String**| The meeting occurrence ID. | [optional] 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**RegistrationList**](RegistrationList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_create**
> InlineResponse20118 webinar_create(user_id, body)

Create a Webinar

Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees.<br>Use this API to schedule a Webinar for a user (host).<br><br>  **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br> **Prerequisites:** * Pro or higher plan with a Webinar Add-on.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

body = ZoomUs::object.new # object | 


begin
  #Create a Webinar
  result = api_instance.webinar_create(user_id, body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **body** | [**object**](.md)|  | 

### Return type

[**InlineResponse20118**](InlineResponse20118.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_delete**
> webinar_delete(webinar_id, opts)

Delete a Webinar

Delete a Webinar.<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br> **Prerequisites:**<br> * Pro or higher plan with a Webinar Add-on.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

opts = { 
  occurrence_id: 'occurrence_id_example' # String | The meeting occurrence ID.
}

begin
  #Delete a Webinar
  api_instance.webinar_delete(webinar_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **occurrence_id** | **String**| The meeting occurrence ID. | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_panelist_create**
> webinar_panelist_create(webinar_id, body)

Add Panelists

Panelists in a Webinar can view and send video, screen share, annotate, etc and do much more compared to attendees in a webinar.<br>Use this API to [add panelists](https://support.zoom.us/hc/en-us/articles/115005657826-Inviting-Panelists-to-a-Webinar#h_7550d59e-23f5-4703-9e22-e76bded1ed70) to a scheduled webinar.<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br> <br>   **Prerequisites:** * Pro or a higher plan with [Webinar Add-on](https://zoom.us/webinar).<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

body = ZoomUs::Body37.new # Body37 | 


begin
  #Add Panelists
  api_instance.webinar_panelist_create(webinar_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_panelist_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **body** | [**Body37**](Body37.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_panelist_delete**
> webinar_panelist_delete(webinar_id, panelist_id)

Remove a Panelist

[Remove](https://support.zoom.us/hc/en-us/articles/115005657826-Inviting-Panelists-to-a-Webinar#h_de31f237-a91c-4fb2-912b-ecfba8ec5ffb) a single panelist from a webinar.<br> You can retrieve the `panelistId` by calling **List Panelists API**.<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br>   **Prerequisites:**<br> * Pro or a higher plan with [Webinar Add-on](https://zoom.us/webinar).<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

panelist_id = 56 # Integer | The panelist ID or panelist email.


begin
  #Remove a Panelist
  api_instance.webinar_panelist_delete(webinar_id, panelist_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_panelist_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **panelist_id** | **Integer**| The panelist ID or panelist email. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_panelists**
> InlineResponse20055 webinar_panelists(webinar_id)

List Panelists

Panelists in a Webinar can view and send video, screen share, annotate, etc and do much more compared to attendees in a Webinar.   Use this API to list all the panelists of a Webinar.<br><br> **Scopes:** `webinar:read:admin` `webinar:read`<br>  <br> **Prerequisites:**<br> * Pro or a higher plan with [Webinar Add-on](https://zoom.us/webinar).<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.


begin
  #List Panelists
  result = api_instance.webinar_panelists(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_panelists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 

### Return type

[**InlineResponse20055**](InlineResponse20055.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_panelists_delete**
> webinar_panelists_delete(webinar_id)

Remove Panelists

Remove all the panelists from a Webinar.<br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br> **Prerequisites:**<br> * Pro or a higher plan with [Webinar Add-on](https://zoom.us/webinar).<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.


begin
  #Remove Panelists
  api_instance.webinar_panelists_delete(webinar_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_panelists_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_poll_create**
> InlineResponse20121 webinar_poll_create(webinar_id, body)

Create a Webinar's Poll

Create a [poll](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars) for a webinar.<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

body = ZoomUs::object.new # object | Webinar poll object


begin
  #Create a Webinar's Poll
  result = api_instance.webinar_poll_create(webinar_id, body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_poll_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **body** | [**object**](.md)| Webinar poll object | 

### Return type

[**InlineResponse20121**](InlineResponse20121.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_poll_delete**
> webinar_poll_delete(webinar_id, poll_id)

Delete a Webinar Poll

Delete a webinar's [poll](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars).<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

poll_id = 'poll_id_example' # String | The poll ID


begin
  #Delete a Webinar Poll
  api_instance.webinar_poll_delete(webinar_id, poll_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_poll_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **poll_id** | **String**| The poll ID | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_poll_get**
> InlineResponse20121 webinar_poll_get(webinar_id, poll_id)

Get a Webinar Poll

Get a webinar's [poll](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars) details.<br><br> **Scopes:** `webinar:read:admin` `webinar:read`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

poll_id = 'poll_id_example' # String | The poll ID


begin
  #Get a Webinar Poll
  result = api_instance.webinar_poll_get(webinar_id, poll_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_poll_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **poll_id** | **String**| The poll ID | 

### Return type

[**InlineResponse20121**](InlineResponse20121.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_poll_update**
> webinar_poll_update(webinar_id, poll_id, body)

Update a Webinar Poll

Update a webinar's [poll](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars).<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

poll_id = 'poll_id_example' # String | The poll ID

body = ZoomUs::object.new # object | Webinar Poll


begin
  #Update a Webinar Poll
  api_instance.webinar_poll_update(webinar_id, poll_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_poll_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **poll_id** | **String**| The poll ID | 
 **body** | [**object**](.md)| Webinar Poll | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_polls**
> Object webinar_polls(webinar_id)

List a Webinar's Polls 

List all the [polls](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars) of a Webinar.<br><br> **Scopes:** `webinar:read:admin` `webinar:read`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.


begin
  #List a Webinar's Polls 
  result = api_instance.webinar_polls(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_polls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_registrant_create**
> InlineResponse20120 webinar_registrant_create(webinar_id, body, opts)

Add a Webinar Registrant

Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees. Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form before receiving the link to join the Webinar.<br>Use this API to create and submit the registration of a user for a webinar.<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br> **Prerequisites:** * Pro or higher plan with a Webinar Add-on.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

body = ZoomUs::object.new # object | 

opts = { 
  occurrence_ids: 'occurrence_ids_example' # String | Occurrence ID. Get this value from the webinar get API. Multiple values separated by a comma.
}

begin
  #Add a Webinar Registrant
  result = api_instance.webinar_registrant_create(webinar_id, body, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_registrant_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **body** | [**object**](.md)|  | 
 **occurrence_ids** | **String**| Occurrence ID. Get this value from the webinar get API. Multiple values separated by a comma. | [optional] 

### Return type

[**InlineResponse20120**](InlineResponse20120.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_registrant_get**
> WebianrRegistrant webinar_registrant_get(webinar_id, registrant_id, opts)

Get a Webinar Registrant

Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees. Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form before receiving the link to join the Webinar.<br>Use this API to get details on a specific user who has registered for the Webinar.<br><br> **Scopes:** `webinar:read:admin` `webinar:read`<br>  <br> **Prerequisites:**<br> * The account must have a Webinar plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

registrant_id = 'registrant_id_example' # String | The registrant ID.

opts = { 
  occurrence_id: 'occurrence_id_example' # String | The meeting occurrence ID.
}

begin
  #Get a Webinar Registrant
  result = api_instance.webinar_registrant_get(webinar_id, registrant_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_registrant_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **registrant_id** | **String**| The registrant ID. | 
 **occurrence_id** | **String**| The meeting occurrence ID. | [optional] 

### Return type

[**WebianrRegistrant**](WebianrRegistrant.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_registrant_question_update**
> webinar_registrant_question_update(webinar_id, body)

Update Registration Questions

Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form with fields and questions before they can receive the link to join the Webinar.<br>Use this API to update registration questions and fields of a scheduled Webinar that are to be answered by users while registering for a Webinar.<br><br> **Prerequisites:**<br>   * Pro or higher plan with a Webinar Add-on. * Registration option for Webinar should be set as required to use this API.  **Scopes:** `webinar:write:admin` `webinar:write`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

body = ZoomUs::object.new # object | Webinar Registrant Questions


begin
  #Update Registration Questions
  api_instance.webinar_registrant_question_update(webinar_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_registrant_question_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **body** | [**object**](.md)| Webinar Registrant Questions | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_registrant_status**
> webinar_registrant_status(webinar_id, body, opts)

Update Webinar Registrant Status

Update a webinar registrant's status.<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

body = ZoomUs::Body38.new # Body38 | 

opts = { 
  occurrence_id: 'occurrence_id_example' # String | The meeting occurrence ID.
}

begin
  #Update Webinar Registrant Status
  api_instance.webinar_registrant_status(webinar_id, body, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_registrant_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **body** | [**Body38**](Body38.md)|  | 
 **occurrence_id** | **String**| The meeting occurrence ID. | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_registrants**
> RegistrationList webinar_registrants(webinar_id, opts)

List Webinar Registrants

Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees. Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form before receiving the link to join the Webinar.<br> Use this API to list all the users that have registered for a webinar.<br><br> **Prerequisites:** * Pro or higher plan with a Webinar Add-on.<br> **Scopes:** `webinar:read:admin` `webinar:read`<br> <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

opts = { 
  occurrence_id: 'occurrence_id_example', # String | The meeting occurrence ID.
  status: 'approved', # String | The registrant status:<br>`pending` - Registrant's status is pending.<br>`approved` - Registrant's status is approved.<br>`denied` - Registrant's status is denied.
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List Webinar Registrants
  result = api_instance.webinar_registrants(webinar_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_registrants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
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



# **webinar_registrants_questions_get**
> InlineResponse20056 webinar_registrants_questions_get(webinar_id)

List Registration Questions

Scheduling a [Webinar with registration](https://support.zoom.us/hc/en-us/articles/204619915-Scheduling-a-Webinar-with-Registration) requires your registrants to complete a brief form with fields and questions before they can receive the link to join the Webinar.<br>Use this API to list registration questions and fields that are to be answered by users while registering for a Webinar.<br> **Prerequisites:**<br>   * Pro or higher plan with a Webinar Add-on. **Scopes:** `webinar:read:admin` `webinar:read`<br>  <br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.


begin
  #List Registration Questions
  result = api_instance.webinar_registrants_questions_get(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_registrants_questions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 

### Return type

[**InlineResponse20056**](InlineResponse20056.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_status**
> webinar_status(webinar_id, body)

Update Webinar Status

Update a webinar's status. Use this API to end an ongoing webinar.<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br> **Prerequisites:**<br> * The account must hold a valid [Webinar plan](https://zoom.us/webinar).

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

body = ZoomUs::Body36.new # Body36 | 


begin
  #Update Webinar Status
  api_instance.webinar_status(webinar_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **body** | [**Body36**](Body36.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinar_update**
> webinar_update(webinar_id, body, opts)

Update a Webinar

Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees.<br> Use this API to make updates to a scheduled Webinar.<br><br> **Scopes:** `webinar:write:admin` `webinar:write`<br>  <br> **Prerequisites:**<br> * Pro or higher plan with a Webinar Add-on.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

webinar_id = 56 # Integer | The webinar ID.

body = ZoomUs::object.new # object | Webinar.

opts = { 
  occurrence_id: 'occurrence_id_example' # String | Webinar occurrence id. Support change of agenda, start_time, duration, settings: {host_video, panelist_video, hd_video, watermark, auto_recording}
}

begin
  #Update a Webinar
  api_instance.webinar_update(webinar_id, body, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinar_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **Integer**| The webinar ID. | 
 **body** | [**object**](.md)| Webinar. | 
 **occurrence_id** | **String**| Webinar occurrence id. Support change of agenda, start_time, duration, settings: {host_video, panelist_video, hd_video, watermark, auto_recording} | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **webinars**
> UserList webinars(user_id, opts)

List Webinars

Zoom users with a [Webinar Plan](https://zoom.us/webinar) have access to creating and managing Webinars. Webinar allows a host to broadcast a Zoom meeting to up to 10,000 attendees.<br> Use this API to list all the webinars that are scheduled by or on-behalf a user (Webinar host).<br><br> **Scopes:** `webinar:read:admin` `webinar:read`<br> <br> **Prerequisites:** * Pro or higher plan with a Webinar Add-on.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::WebinarsApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List Webinars
  result = api_instance.webinars(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling WebinarsApi->webinars: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**UserList**](UserList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



