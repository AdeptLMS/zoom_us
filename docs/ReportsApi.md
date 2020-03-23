# ZoomUs::ReportsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_billing_invoices_reports**](ReportsApi.md#get_billing_invoices_reports) | **GET** /report/billing/invoices | Get Billing Invoice Reports
[**get_billing_report**](ReportsApi.md#get_billing_report) | **GET** /report/billing | Get Billing Reports
[**report_cloud_recording**](ReportsApi.md#report_cloud_recording) | **GET** /report/cloud_recording | Get Cloud Recording Usage Report
[**report_daily**](ReportsApi.md#report_daily) | **GET** /report/daily | Get Daily Usage Report
[**report_meeting_details**](ReportsApi.md#report_meeting_details) | **GET** /report/meetings/{meetingId} | Get Meeting Detail Reports
[**report_meeting_participants**](ReportsApi.md#report_meeting_participants) | **GET** /report/meetings/{meetingId}/participants | Get Meeting Participant Reports
[**report_meeting_polls**](ReportsApi.md#report_meeting_polls) | **GET** /report/meetings/{meetingId}/polls | Get Meeting Poll Reports
[**report_meetings**](ReportsApi.md#report_meetings) | **GET** /report/users/{userId}/meetings | Get Meeting Reports
[**report_operation_logs**](ReportsApi.md#report_operation_logs) | **GET** /report/operationlogs | Get Operation Logs Report
[**report_sign_in_sign_out_activities**](ReportsApi.md#report_sign_in_sign_out_activities) | **GET** /report/activities | Get Sign In / Sign Out Activity Report
[**report_telephone**](ReportsApi.md#report_telephone) | **GET** /report/telephone | Get Telephone Reports
[**report_users**](ReportsApi.md#report_users) | **GET** /report/users | Get Active/Inactive Host Reports
[**report_webinar_details**](ReportsApi.md#report_webinar_details) | **GET** /report/webinars/{webinarId} | Get Webinar Detail Reports
[**report_webinar_participants**](ReportsApi.md#report_webinar_participants) | **GET** /report/webinars/{webinarId}/participants | Get Webinar Participant Reports
[**report_webinar_polls**](ReportsApi.md#report_webinar_polls) | **GET** /report/webinars/{webinarId}/polls | Get Webinar Poll Reports
[**report_webinar_qa**](ReportsApi.md#report_webinar_qa) | **GET** /report/webinars/{webinarId}/qa | Get Webinar Q&amp;A Report


# **get_billing_invoices_reports**
> InlineResponse200100 get_billing_invoices_reports(opts)

Get Billing Invoice Reports

Get billing invoices reports for a specific billing period. Provide the `billing_id` of the billing period for which you would like to retrieve the invoices for. This ID can be retrieved from **Get Billing Reports** API.   **Prerequisites:**<br> * Pro or a higher account with **Billing Report** option enabled.  **Scopes:** `report:read:admin`, `report:master`

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

opts = {
  billing_id: 'billing_id_example' # String | Unique Identifier of the Billing Report. Retrieve this ID from the response of **Get Billing Reports** API request.
}

begin
  #Get Billing Invoice Reports
  result = api_instance.get_billing_invoices_reports(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->get_billing_invoices_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_id** | **String**| Unique Identifier of the Billing Report. Retrieve this ID from the response of **Get Billing Reports** API request.    | [optional]

### Return type

[**InlineResponse200100**](InlineResponse200100.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_billing_report**
> InlineResponse20099 get_billing_report

Get Billing Reports

Get billing reports of a Zoom account.  **Prerequisites:**<br> * Pro or a higher account with Billing Report option enabled.  **Scopes:** `report:read:admin`, `report:master`

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

begin
  #Get Billing Reports
  result = api_instance.get_billing_report
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->get_billing_report: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20099**](InlineResponse20099.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_cloud_recording**
> Object report_cloud_recording(from, to)

Get Cloud Recording Usage Report

Retrieve cloud recording usage report for a specified period. You can only get cloud recording reports that is one day ealier than the current date and for the most recent period of 6 months. The date gap between from and to dates should be smaller or equal to 30 days. <br> **Prerequisites**<br> * Pro or higher plan.<br> **Scopes:** `report:read:admin`<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

from = Date.parse('2013-10-20') # Date | Start date in 'yyyy-mm-dd' format. The date range defined by the \"from\" and \"to\" parameters should only be one month as the report includes only one month worth of data at once.

to = Date.parse('2013-10-20') # Date | End date.


begin
  #Get Cloud Recording Usage Report
  result = api_instance.report_cloud_recording(from, to)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_cloud_recording: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once. |
 **to** | **Date**| End date. |

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_daily**
> Object report_daily(opts)

Get Daily Usage Report

Retrieve daily report to access the account-wide usage of Zoom services for each day in a given month. It lists the number of new users, meetings, participants, and meeting minutes.<br> **Prerequisites**<br> * Pro or higher plan.<br> **Scopes:** `report:read:admin`<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

opts = {
  year: 56, # Integer | Year for this report
  month: 56 # Integer | Month for this report
}

begin
  #Get Daily Usage Report
  result = api_instance.report_daily(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_daily: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **Integer**| Year for this report | [optional]
 **month** | **Integer**| Month for this report | [optional]

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_meeting_details**
> InlineResponse20036 report_meeting_details(meeting_id)

Get Meeting Detail Reports

Get a detailed report for a past meeting. <br> **Scopes:** `report:read:admin`<br> **Prerequisites:**<br> * Pro or a higher plan.<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.


begin
  #Get Meeting Detail Reports
  result = api_instance.report_meeting_details(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_meeting_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance. |

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_meeting_participants**
> InlineResponse20037 report_meeting_participants(meeting_id, opts)

Get Meeting Participant Reports

Get participant report for a past meeting.<br><br> **Scopes:** `report:read:admin`<br> **Prerequisites:**<br> * Pro or a higher plan.<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.

opts = {
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #Get Meeting Participant Reports
  result = api_instance.report_meeting_participants(meeting_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_meeting_participants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance. |
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional]

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_meeting_polls**
> InlineResponse20038 report_meeting_polls(meeting_id)

Get Meeting Poll Reports

Retrieve a report of [poll](https://support.zoom.us/hc/en-us/articles/213756303-Polling-for-Meetings) results for a past meeting. <br><br> **Scopes:** `report:read:admin`<br> **Prerequisites:**<br> * Pro or a higher plan.<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

meeting_id = 'meeting_id_example' # String | The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.


begin
  #Get Meeting Poll Reports
  result = api_instance.report_meeting_polls(meeting_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_meeting_polls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meeting_id** | **String**| The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance. |

### Return type

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_meetings**
> InlineResponse20035 report_meetings(user_id, from, to, opts)

Get Meeting Reports

Retrieve [report](https://support.zoom.us/hc/en-us/articles/216378603-Meeting-Reporting) on a past meeting for a specified period of time. The time range for the report is limited to a month and the month should fall under the past six months.  Meetings will only be returned in the response if the meeting has two or more unique participants.  <br><br> **Scopes:** `report:read:admin`<br>  <br> **Prerequisites:**<br> * Pro or higher plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

from = Date.parse('2013-10-20') # Date | Start date in 'yyyy-mm-dd' format. The date range defined by the \"from\" and \"to\" parameters should only be one month as the report includes only one month worth of data at once.

to = Date.parse('2013-10-20') # Date | End date.

opts = {
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  type: 'past' # String | The meeting types: <br>`past` - Past meetings.<br>`pastOne` - Past one user meetings.
}

begin
  #Get Meeting Reports
  result = api_instance.report_meetings(user_id, from, to, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_meetings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. |
 **from** | **Date**| Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once. |
 **to** | **Date**| End date. |
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional]
 **type** | **String**| The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;pastOne&#x60; - Past one user meetings.  | [optional] [default to past]

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_operation_logs**
> InlineResponse20044 report_operation_logs(from, to, opts)

Get Operation Logs Report

The [Operations Logs](https://support.zoom.us/hc/en-us/articles/360032748331-Operation-Logs) report allows you to audit admin and user activity, such as adding a new user, changing account settings, and deleting recordings.<br> Use this API to retrieve operation logs report for a specified period of time.<br> **Scopes:** `report:read:admin`<br>  <br> **Prerequisites:**<br> * Pro or higher plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

from = Date.parse('2013-10-20') # Date | Start date in 'yyyy-mm-dd' format. The date range defined by the \"from\" and \"to\" parameters should only be one month as the report includes only one month worth of data at once.

to = Date.parse('2013-10-20') # Date | End date.

opts = {
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #Get Operation Logs Report
  result = api_instance.report_operation_logs(from, to, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_operation_logs: #{e}"
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

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_sign_in_sign_out_activities**
> InlineResponse20068 report_sign_in_sign_out_activities(opts)

Get Sign In / Sign Out Activity Report

Retrieve a list of sign in / sign out activity logs [report](https://support.zoom.us/hc/en-us/articles/201363213-Getting-Started-with-Reports) of users under a Zoom account.<br> **Prerequisites**<br> * Pro or higher plan.<br> **Scopes:** `report:read:admin`<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

opts = {
  from: ::DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Start date for which you would like to view the activity logs report.
  to: ::DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | End date up to which you would like to view the activity logs report.
  page_size: 56, # Integer | The number of records to be returned within a single API call
  next_page_token: 'next_page_token_example' # String | Next page token is used to paginate through large result sets
}

begin
  #Get Sign In / Sign Out Activity Report
  result = api_instance.report_sign_in_sign_out_activities(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_sign_in_sign_out_activities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**| Start date for which you would like to view the activity logs report. | [optional]
 **to** | **DateTime**| End date up to which you would like to view the activity logs report. | [optional]
 **page_size** | **Integer**| The number of records to be returned within a single API call | [optional]
 **next_page_token** | **String**| Next page token is used to paginate through large result sets | [optional]

### Return type

[**InlineResponse20068**](InlineResponse20068.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_telephone**
> InlineResponse20043 report_telephone(from, to, opts)

Get Telephone Reports

The Telephone report allows you to view who dialed into meetings via phone (Audio Conferencing or SIP Connected Audio) and which number they dialed into and other details. Use this API to get telephone report for a specified period of time.  **Scopes:** `report:read:admin`<br>  <br>**Prerequisites:**<br> * Pro or higher plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

from = Date.parse('2013-10-20') # Date | Start date in 'yyyy-mm-dd' format. The date range defined by the \"from\" and \"to\" parameters should only be one month as the report includes only one month worth of data at once.

to = Date.parse('2013-10-20') # Date | End date.

opts = {
  type: '1', # String | Audio types:<br>`1` - Toll-free Call-in & Call-out. `3` - SIP Connected Audio
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #Get Telephone Reports
  result = api_instance.report_telephone(from, to, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_telephone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once. |
 **to** | **Date**| End date. |
 **type** | **String**| Audio types:&lt;br&gt;&#x60;1&#x60; - Toll-free Call-in &amp; Call-out. &#x60;3&#x60; - SIP Connected Audio | [optional] [default to 1]
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_users**
> InlineResponse20034 report_users(from, to, opts)

Get Active/Inactive Host Reports

A user is considered to be an active host during the month specified in the \"from\" and \"to\" range, if the user has hosted at least one meeting during this period. If the user didn't host any meetings during this period, the user is considered to be inactive.<br>The Active Hosts report displays a list of meetings, participants, and meeting minutes for a specific time range, up to one month. The month should fall within the last six months.<br>The Inactive Hosts report pulls a list of users who were not active during a specific period of time.  Use this API to retrieve an active or inactive host report for a specified period of time. The time range for the report is limited to a month and the month should fall under the past six months. <br>You can specify the type of report and date range using the query parameters.<br> **Scopes:** `report:read:admin`<br>  <br> **Prerequisites:**<br> * Pro or higher plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

from = Date.parse('2013-10-20') # Date | Start date in 'yyyy-mm-dd' format. The date range defined by the \"from\" and \"to\" parameters should only be one month as the report includes only one month worth of data at once.

to = Date.parse('2013-10-20') # Date | End date.

opts = {
  type: 'type_example', # String | Active or inactive hosts.<br>`active` - Active hosts. <br>`inactive` - Inactive hosts.
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #Get Active/Inactive Host Reports
  result = api_instance.report_users(from, to, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once. |
 **to** | **Date**| End date. |
 **type** | **String**| Active or inactive hosts.&lt;br&gt;&#x60;active&#x60; - Active hosts. &lt;br&gt;&#x60;inactive&#x60; - Inactive hosts. | [optional]
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**InlineResponse20034**](InlineResponse20034.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_webinar_details**
> InlineResponse20039 report_webinar_details(webinar_id)

Get Webinar Detail Reports

Retrieve a [report](https://support.zoom.us/hc/en-us/articles/201393719-Webinar-Reporting) containing past webinar details.  <br><br> **Scopes:** `report:read:admin`<br>  <br> **Prerequisites:**<br> * Pro or higher plan with Webinar add-on.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

webinar_id = 'webinar_id_example' # String | The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.


begin
  #Get Webinar Detail Reports
  result = api_instance.report_webinar_details(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_webinar_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **String**| The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance. |

### Return type

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_webinar_participants**
> InlineResponse20040 report_webinar_participants(webinar_id, opts)

Get Webinar Participant Reports

Get detailed report on each attendee of a webinar.<br><br> **Scopes:** `report:read:admin`<br>  <br> **Prerequisites:**<br> * Pro or a higher plan with Webinar add-on enabled.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

webinar_id = 'webinar_id_example' # String | The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.

opts = {
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #Get Webinar Participant Reports
  result = api_instance.report_webinar_participants(webinar_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_webinar_participants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **String**| The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance. |
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional]

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_webinar_polls**
> InlineResponse20041 report_webinar_polls(webinar_id)

Get Webinar Poll Reports

Retrieve a report on past [webinar polls](https://support.zoom.us/hc/en-us/articles/203749865-Polling-for-Webinars).<br><br> **Scopes:** `report:read:admin`<br>  <br> **Prerequisites:**<br> * Pro or a higher plan with Webinar add-on enabled.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

webinar_id = 'webinar_id_example' # String | The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.


begin
  #Get Webinar Poll Reports
  result = api_instance.report_webinar_polls(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_webinar_polls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **String**| The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance. |

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **report_webinar_qa**
> InlineResponse20042 report_webinar_qa(webinar_id)

Get Webinar Q&A Report

The Question & Answer (Q&A) feature for webinars allows attendees to ask questions during the webinar and for the panelists, co-hosts and host to answer their questions.  Use this API to retrieve a report on question and answers from past webinars. <br><br> **Scopes:** `report:read:admin`<br>  <br> **Prerequisites:**<br> * Pro or a higher plan with Webinar add-on enabled.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::ReportsApi.new

webinar_id = 'webinar_id_example' # String | The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.


begin
  #Get Webinar Q&A Report
  result = api_instance.report_webinar_qa(webinar_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling ReportsApi->report_webinar_qa: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webinar_id** | **String**| The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance. |

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



