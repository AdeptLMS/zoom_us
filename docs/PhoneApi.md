# ZoomUs::PhoneApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_call_logs**](PhoneApi.md#account_call_logs) | **GET** /phone/call_logs | Get Account&#39;s Call Logs
[**assign_calling_plan**](PhoneApi.md#assign_calling_plan) | **POST** /phone/users/{userId}/calling_plans | Assign Calling Plan to a User
[**assign_phone_number**](PhoneApi.md#assign_phone_number) | **POST** /phone/users/{userId}/phone_numbers | Assign Phone Number to User 
[**change_main_company_number**](PhoneApi.md#change_main_company_number) | **PUT** /phone/company_number | Change Main Company Number
[**get_phone_number_details**](PhoneApi.md#get_phone_number_details) | **GET** /phone/numbers/{numberId} | Get Phone Number Details
[**list_account_phone_numbers**](PhoneApi.md#list_account_phone_numbers) | **GET** /phone/numbers | List Phone Numbers
[**list_calling_plans**](PhoneApi.md#list_calling_plans) | **GET** /phone/calling_plans | List Calling Plans
[**list_phone_users**](PhoneApi.md#list_phone_users) | **GET** /phone/users | List Phone Users
[**phone_user**](PhoneApi.md#phone_user) | **GET** /phone/users/{userId} | Get User&#39;s Profile
[**phone_user_call_logs**](PhoneApi.md#phone_user_call_logs) | **GET** /phone/users/{userId}/call_logs | Get User&#39;s Call Logs
[**phone_user_recordings**](PhoneApi.md#phone_user_recordings) | **GET** /phone/users/{userId}/recordings | Get User&#39;s Recordings
[**phone_user_settings**](PhoneApi.md#phone_user_settings) | **GET** /phone/users/{userId}/settings | Get User&#39;s Settings
[**phone_user_voice_mails**](PhoneApi.md#phone_user_voice_mails) | **GET** /phone/users/{userId}/voice_mails | Get User&#39;s Voicemails
[**unassign_calling_plan**](PhoneApi.md#unassign_calling_plan) | **DELETE** /phone/users/{userId}/calling_plans/{type} | Unassign User&#39;s Calling Plan
[**unassign_phone_number**](PhoneApi.md#unassign_phone_number) | **DELETE** /phone/users/{userId}/phone_numbers/{phoneNumberId} | Unassign User&#39;s Phone Number
[**update_user_profile**](PhoneApi.md#update_user_profile) | **PATCH** /phone/users/{userId} | Update User&#39;s Profile


# **account_call_logs**
> InlineResponse20066 account_call_logs(opts)

Get Account's Call Logs

Retrieve [call logs](https://support.zoom.us/hc/en-us/articles/360021114452-Viewing-Call-Logs) for an account.   **Scopes**: `phone:read:admin`<br> <br> **Prerequisite:**<br> 1. Business or Enterprise account<br> 2. A Zoom Phone license<br> 3. Account Owner and a [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) with Zoom Phone Management<br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1, # Integer | The current page number of returned records.
  from: 'from_example', # String | Start date from which you would like to get the call logs. The start date should be within past six months.
  to: 'to_example', # String | The end date upto which you would like to get the call logs for. The end date should be within past six months.
  type: 'type_example' # String | The type of the call logs. The value can be either \"all\" or \"missed\".
}

begin
  #Get Account's Call Logs
  result = api_instance.account_call_logs(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->account_call_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]
 **from** | **String**| Start date from which you would like to get the call logs. The start date should be within past six months. | [optional] 
 **to** | **String**| The end date upto which you would like to get the call logs for. The end date should be within past six months. | [optional] 
 **type** | **String**| The type of the call logs. The value can be either \&quot;all\&quot; or \&quot;missed\&quot;. | [optional] 

### Return type

[**InlineResponse20066**](InlineResponse20066.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **assign_calling_plan**
> Object assign_calling_plan(user_id, opts)

Assign Calling Plan to a User

Assign [calling plan](https://marketplace.zoom.us/docs/api-reference/other-references/plans#zoom-phone-calling-plans) to a [Zoom Phone](https://support.zoom.us/hc/en-us/categories/360001370051-Zoom-Phone) user.  **Scopes**: `phone:write` `phone:write:admin`<br> <br> **Prerequisite:**  1. Business or Enterprise account 2. A Zoom Phone license  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | 

opts = { 
  body: ZoomUs::Body47.new # Body47 | 
}

begin
  #Assign Calling Plan to a User
  result = api_instance.assign_calling_plan(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->assign_calling_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 
 **body** | [**Body47**](Body47.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **assign_phone_number**
> InlineResponse20067 assign_phone_number(user_id, opts)

Assign Phone Number to User 

Assign a [phone number](https://support.zoom.us/hc/en-us/articles/360020808292-Managing-Phone-Numbers) to a user who has already enabled Zoom Phone.   **Scopes**: `phone:write` `phone:write:admin`<br> <br> **Prerequisite:**  1. Business or Enterprise account 2. A Zoom Phone license

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | 

opts = { 
  body: ZoomUs::Body46.new # Body46 | Provide either an id or a number in the request body.
}

begin
  #Assign Phone Number to User 
  result = api_instance.assign_phone_number(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->assign_phone_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 
 **body** | [**Body46**](Body46.md)| Provide either an id or a number in the request body. | [optional] 

### Return type

[**InlineResponse20067**](InlineResponse20067.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **change_main_company_number**
> Object change_main_company_number(opts)

Change Main Company Number

The [main company number](https://support.zoom.us/hc/en-us/articles/360028553691) can be used by external callers to reach your phone users (by dialing the main company number and the user's extension). It can also be used by phone users in your account as their caller ID while making calls.<br><br> Use this API to [change the main company number](https://support.zoom.us/hc/en-us/articles/360028553691#h_82414c34-9df2-428a-85a4-efcf7f9e0d72) of an account.<br><br> **Prerequisites:**<br> * Pro or higher account plan. * Account owner or admin permissions<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

opts = { 
  body: ZoomUs::Body71.new # Body71 | 
}

begin
  #Change Main Company Number
  result = api_instance.change_main_company_number(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->change_main_company_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body71**](Body71.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_phone_number_details**
> InlineResponse20092 get_phone_number_details(number_id)

Get Phone Number Details

A Zoom account owner or admin can purchase phone numbers and assign them to Zoom phone users. Use this API to get details on a specific Phone number in a Zoom account.<br><br> **Prerequisites:**<br> * Pro or higher plan with Zoom phone license<br> **Scope:** `phone:read:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

number_id = 'number_id_example' # String | Unique Identifier of the Phone Number. This can be retrieved from the List Phone Numbers API.


begin
  #Get Phone Number Details
  result = api_instance.get_phone_number_details(number_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->get_phone_number_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number_id** | **String**| Unique Identifier of the Phone Number. This can be retrieved from the List Phone Numbers API. | 

### Return type

[**InlineResponse20092**](InlineResponse20092.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_account_phone_numbers**
> InlineResponse200 list_account_phone_numbers(opts)

List Phone Numbers

A Zoom account owner or admin can purchase phone numbers and assign them to Zoom phone users. Use this API to list all Zoom Phone numbers in a Zoom account. You can filter the response based on your needs by using query parameters.  **Prerequisites:**<br> * Pro or higher plan with Zoom phone license<br> **Scope:** `phone:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

opts = { 
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  type: 'type_example', # String | Query response by number assignment. The value can be one of the following:<br> `assigned`: The number has been assigned to either a user, a call queue, an auto-receptionist or a common area phone in an account. <br>`unassigned`: The number is not assigned to anyone.<br>  `all`: Include both assigned and unassigned numbers in the response. 
  extension_type: 'extension_type_example', # String | The type of assignee to whom the number is assigned. The value can be one of the following:<br> `user`<br> `callQueue`<br> `autoReceptionist`<br> `commonAreaPhone`
  page_size: 30, # Integer | The number of records returned within a single API call.
  number_type: 'number_type_example', # String | The type of phone number. The value can be either `toll` or `tollfree`.
  pending_numbers: true # BOOLEAN | Include or exclude pending numbers in the response. The value can be either `true` or `false`.
}

begin
  #List Phone Numbers
  result = api_instance.list_account_phone_numbers(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->list_account_phone_numbers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
 **type** | **String**| Query response by number assignment. The value can be one of the following:&lt;br&gt; &#x60;assigned&#x60;: The number has been assigned to either a user, a call queue, an auto-receptionist or a common area phone in an account. &lt;br&gt;&#x60;unassigned&#x60;: The number is not assigned to anyone.&lt;br&gt;  &#x60;all&#x60;: Include both assigned and unassigned numbers in the response.  | [optional] 
 **extension_type** | **String**| The type of assignee to whom the number is assigned. The value can be one of the following:&lt;br&gt; &#x60;user&#x60;&lt;br&gt; &#x60;callQueue&#x60;&lt;br&gt; &#x60;autoReceptionist&#x60;&lt;br&gt; &#x60;commonAreaPhone&#x60; | [optional] 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **number_type** | **String**| The type of phone number. The value can be either &#x60;toll&#x60; or &#x60;tollfree&#x60;. | [optional] 
 **pending_numbers** | **BOOLEAN**| Include or exclude pending numbers in the response. The value can be either &#x60;true&#x60; or &#x60;false&#x60;. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_calling_plans**
> InlineResponse20093 list_calling_plans

List Calling Plans

List all Zoom Phone [calling plans](https://marketplace.zoom.us/docs/api-reference/other-references/plans#zoom-phone-calling-plans) that are enabled for a Zoom account.<br><br> **Prerequisites:**<br> * Pro or a higher account with Zoom phone license. <br> **Scope:** `phone:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

begin
  #List Calling Plans
  result = api_instance.list_calling_plans
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->list_calling_plans: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20093**](InlineResponse20093.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_phone_users**
> InlineResponse20094 list_phone_users(opts)

List Phone Users

List all the users on an account who have been assigned Zoom Phone licenses.<br><br> **Prerequisites:**<br> * Pro or higher plan with Zoom phone license<br> **Scope:** `phone:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

opts = { 
  page_size: 30, # Integer | The number of records returned from a single API call.
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  site_id: 'site_id_example' # String | Unique Identifier of the site. This can be retrieved from List Phone Sites API.
}

begin
  #List Phone Users
  result = api_instance.list_phone_users(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->list_phone_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The number of records returned from a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
 **site_id** | **String**| Unique Identifier of the site. This can be retrieved from List Phone Sites API. | [optional] 

### Return type

[**InlineResponse20094**](InlineResponse20094.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **phone_user**
> InlineResponse20061 phone_user(user_id)

Get User's Profile

Retrieve a user's [zoom phone](https://support.zoom.us/hc/en-us/articles/360001297663-Quickstart-Guide-for-Zoom-Phone-Administrators) profile.  **Scopes:** `phone:read`, `phone:read:admin`<br>    **Prerequisites** : 1. Business or Enterprise account  2. A Zoom Phone license

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.


begin
  #Get User's Profile
  result = api_instance.phone_user(user_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->phone_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 

### Return type

[**InlineResponse20061**](InlineResponse20061.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **phone_user_call_logs**
> InlineResponse20063 phone_user_call_logs(user_id, from, to, opts)

Get User's Call Logs

Retrieve a [zoom phone](https://support.zoom.us/hc/en-us/articles/360001297663-Quickstart-Guide-for-Zoom-Phone-Administrators) user's call logs.  **Scopes:** `phone:read`, `phone:read:admin`<br> <br> **Prerequisite:**  1. Business or Enterprise account 2. A Zoom Phone license

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

from = Date.parse('2013-10-20') # Date | Start date in 'yyyy-mm-dd' format. The date range defined by the \"from\" and \"to\" parameters should only be one month as the report includes only one month worth of data at once.

to = Date.parse('2013-10-20') # Date | End date.

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1, # Integer | The current page number of returned records.
  type: 'type_example' # String | 
}

begin
  #Get User's Call Logs
  result = api_instance.phone_user_call_logs(user_id, from, to, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->phone_user_call_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **from** | **Date**| Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once. | 
 **to** | **Date**| End date. | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]
 **type** | **String**|  | [optional] 

### Return type

[**InlineResponse20063**](InlineResponse20063.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **phone_user_recordings**
> InlineResponse20064 phone_user_recordings(user_id, opts)

Get User's Recordings

Retrieve a user's zoom [phone recordings](https://support.zoom.us/hc/en-us/articles/360021336671-Viewing-Call-History-and-Recordings). **Scopes:** `phone:read`, `phone:read:admin`<br>  <br> **Prerequisite:** 1. Business or Enterprise account 2. A Zoom Phone license

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #Get User's Recordings
  result = api_instance.phone_user_recordings(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->phone_user_recordings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**InlineResponse20064**](InlineResponse20064.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **phone_user_settings**
> InlineResponse20062 phone_user_settings(user_id)

Get User's Settings

Retrieve a user's zoom phone profile [settings](https://support.zoom.us/hc/en-us/articles/360021325712-Configuring-Settings).  **Scopes:** `phone:read`, `phone:read:admin`<br> <br> **Prerequisite:** 1. Business or Enterprise account 2. A Zoom Phone license

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.


begin
  #Get User's Settings
  result = api_instance.phone_user_settings(user_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->phone_user_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 

### Return type

[**InlineResponse20062**](InlineResponse20062.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **phone_user_voice_mails**
> InlineResponse20065 phone_user_voice_mails(user_id, opts)

Get User's Voicemails

Retrieve a user's Zoom Phone voicemails.   **Scopes:** `phone:read`, `phone:read:admin`<br> <br> **Prerequisite:** 1. Business or Enterprise account 2. A Zoom Phone license

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1, # Integer | The current page number of returned records.
  status: 'all' # String | Status of the voice mail
}

begin
  #Get User's Voicemails
  result = api_instance.phone_user_voice_mails(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->phone_user_voice_mails: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]
 **status** | **String**| Status of the voice mail | [optional] [default to all]

### Return type

[**InlineResponse20065**](InlineResponse20065.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **unassign_calling_plan**
> Object unassign_calling_plan(user_id, type)

Unassign User's Calling Plan

Unassign a [calling plan](https://marketplace.zoom.us/docs/api-reference/other-references/plans#zoom-phone-calling-plans) that was previously assigned to a [Zoom Phone](https://support.zoom.us/hc/en-us/categories/360001370051) user.  **Scopes**: `phone:write` `phone:write:admin`<br> <br> **Prerequisite:**  1. Business or Enterprise account 2. A Zoom Phone license

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | 

type = 'type_example' # String | The [type](https://marketplace.zoom.us/docs/api-reference/other-references/plans#zoom-phone-calling-plans) of the calling plan that was assigned to user. (e.g: The value of type would be \"200\" for Unlimited US/Canada calling plan.) 


begin
  #Unassign User's Calling Plan
  result = api_instance.unassign_calling_plan(user_id, type)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->unassign_calling_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 
 **type** | **String**| The [type](https://marketplace.zoom.us/docs/api-reference/other-references/plans#zoom-phone-calling-plans) of the calling plan that was assigned to user. (e.g: The value of type would be \&quot;200\&quot; for Unlimited US/Canada calling plan.)  | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **unassign_phone_number**
> Object unassign_phone_number(user_id, phone_number_id)

Unassign User's Phone Number

Unassign [phone number](https://support.zoom.us/hc/en-us/articles/360020808292-Managing-Phone-Numbers#h_38ba8b01-26e3-4b1b-a9b5-0717c00a7ca6) of a Zoom phone user. <br>  After assigning a phone number, you can remove it if you don't want it to be assigned to anyone.  **Scopes**: `phone:write` `phone:write:admin`<br> <br> **Prerequisite:**  1. Business or Enterprise account 2. A Zoom Phone license 3. User must have been previously assigned a Zoom Phone number.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | Provide either userId or email address of the user.

phone_number_id = 'phone_number_id_example' # String | Provide either phone number or phoneNumberId of the user. 


begin
  #Unassign User's Phone Number
  result = api_instance.unassign_phone_number(user_id, phone_number_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->unassign_phone_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| Provide either userId or email address of the user. | 
 **phone_number_id** | **String**| Provide either phone number or phoneNumberId of the user.  | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_user_profile**
> Object update_user_profile(user_id, opts)

Update User's Profile

Update a [Zoom Phone](https://support.zoom.us/hc/en-us/categories/360001370051-Zoom-Phone) user's profile.  **Scopes:** `phone:write` `phone:write:admin`  <br><br> **Prerequisite:**  1. Business or Enterprise account 2. A Zoom Phone license

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneApi.new

user_id = 'user_id_example' # String | 

opts = { 
  body: ZoomUs::Body45.new # Body45 | 
}

begin
  #Update User's Profile
  result = api_instance.update_user_profile(user_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneApi->update_user_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 
 **body** | [**Body45**](Body45.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



