# ZoomUs::AccountsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account**](AccountsApi.md#account) | **GET** /accounts/{accountId} | Get a Sub Account
[**account_create**](AccountsApi.md#account_create) | **POST** /accounts | Create a Sub Account
[**account_disassociate**](AccountsApi.md#account_disassociate) | **DELETE** /accounts/{accountId} | Disassociate a Sub Account
[**account_managed_domain**](AccountsApi.md#account_managed_domain) | **GET** /accounts/{accountId}/managed_domains | Get Managed Domains
[**account_options_update**](AccountsApi.md#account_options_update) | **PATCH** /accounts/{accountId}/options | Update Options
[**account_settings**](AccountsApi.md#account_settings) | **GET** /accounts/{accountId}/settings | Get Settings
[**account_settings_update**](AccountsApi.md#account_settings_update) | **PATCH** /accounts/{accountId}/settings | Update Settings
[**account_trusted_domain**](AccountsApi.md#account_trusted_domain) | **GET** /accounts/{accountId}/trusted_domains | Get Trusted Domains
[**accounts**](AccountsApi.md#accounts) | **GET** /accounts | List Sub Accounts
[**get_account_lock_settings**](AccountsApi.md#get_account_lock_settings) | **GET** /accounts/{accountId}/lock_settings | Get Locked Settings
[**update_account_lock_settings**](AccountsApi.md#update_account_lock_settings) | **PATCH** /accounts/{accountId}/lock_settings | Update Locked Settings
[**update_account_owner**](AccountsApi.md#update_account_owner) | **PUT** /accounts/{accountId}/owner | Update the Account Owner


# **account**
> InlineResponse20012 account(account_id)

Get a Sub Account

Get a Sub Account under the Master Account. <aside>Your account must be a Master Account in order to retrieve Sub Accounts. Zoom only assigns this privilege to trusted partners.</aside><br><br> **Prerequisites:** * Pro or a higher paid account with Master Account option enabled. <br> **Scope**: `account:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | The account ID.


begin
  #Get a Sub Account
  result = api_instance.account(account_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_create**
> InlineResponse2015 account_create(body)

Create a Sub Account

Create a Sub Account under the Master Account. <aside>Your account must be a Master Account in order to create Sub Accounts. Zoom only assigns this privilege to trusted partners. Please note: the created user will receive a confirmation email.</aside><br><br> **Prerequisites:**<br> * Pro or a higher paid account with Master Account option enabled. <br> **Scope**: `account:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

body = ZoomUs::Body10.new # Body10 | Account.


begin
  #Create a Sub Account
  result = api_instance.account_create(body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->account_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body10**](Body10.md)| Account. | 

### Return type

[**InlineResponse2015**](InlineResponse2015.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_disassociate**
> account_disassociate(account_id)

Disassociate a Sub Account

Disassociate a Sub Account from the Master Account. This will leave the Sub Account intact but it will no longer be associated with the master account.<br>  <aside>Your account must be a Master Account in order to disassociate Sub Accounts. Zoom only assigns this privilege to trusted partners.</aside> <br>  **Prerequisites:** * Pro or a higher paid account with Master Account option enabled. <br> **Scope**: `account:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | The account ID.


begin
  #Disassociate a Sub Account
  api_instance.account_disassociate(account_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->account_disassociate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_managed_domain**
> InlineResponse20013 account_managed_domain(account_id)

Get Managed Domains

Get a Sub Account's [managed domains](https://support.zoom.us/hc/en-us/articles/203395207-What-is-Managed-Domain-).<br><br>  To get managed domains of the Master Account, provide `me` as the value for accountId in the path parameter.   Provide the Sub Account's Account ID as the value of accountId path parameter to get managed domains of the Sub Account.  **Prerequisites:**<br> * Pro or a higher paid account with Master Account option enabled. <br> **Scope:** `account:read:admin`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | The account ID.


begin
  #Get Managed Domains
  result = api_instance.account_managed_domain(account_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->account_managed_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_options_update**
> account_options_update(account_id, body)

Update Options

Update a Sub Account's options under the Master Account.<br> <aside>Your account must be a Master Account in order to update the options for Sub Accounts. Zoom only assigns this privilege to trusted partners. </aside>  **Prerequisites:** * Pro or a higher paid account with Master Account option enabled. <br> **Scope**: `account:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | The account ID.

body = ZoomUs::Body11.new # Body11 | 


begin
  #Update Options
  api_instance.account_options_update(account_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->account_options_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 
 **body** | [**Body11**](Body11.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_settings**
> Object account_settings(account_id, opts)

Get Settings

Get the settings of a Sub Account under a Master Account.<br> To get the settings of a Master Account, use `me` as the value for the `accountId` path parameter.<p style=\"background-color:#FEEFB3; color:#9F6000; padding:8px\"><b>Note:</b> The `force_pmi_jbh_password` field under meeting settings is planned to be deprecated on September 22, 2019. This field will be replaced by another field that will provide the same functionality.</p>  **Prerequisites**:  * The Sub Account must be a paid account.<br> **Scopes**: `account:read:admin` <br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | The account ID.

opts = { 
  option: 'option_example' # String | `meeting_authentication`: Use this query parameter to view [meeting authentication configuration](https://support.zoom.us/hc/en-us/articles/360037117472-Authentication-Profiles-for-Meetings-and-Webinars) applied on the account.<br>`recording_authentication`: Use this query parameter to view [recording authentication configuration](https://support.zoom.us/hc/en-us/articles/360037756671-Authentication-Profiles-for-Cloud-Recordings) applied on the account.
}

begin
  #Get Settings
  result = api_instance.account_settings(account_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->account_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 
 **option** | **String**| &#x60;meeting_authentication&#x60;: Use this query parameter to view [meeting authentication configuration](https://support.zoom.us/hc/en-us/articles/360037117472-Authentication-Profiles-for-Meetings-and-Webinars) applied on the account.&lt;br&gt;&#x60;recording_authentication&#x60;: Use this query parameter to view [recording authentication configuration](https://support.zoom.us/hc/en-us/articles/360037756671-Authentication-Profiles-for-Cloud-Recordings) applied on the account. | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_settings_update**
> account_settings_update(account_id, body, opts)

Update Settings

Update the settings of a Sub Account that is under a Master Account.<br> To update the settings of the Master Account, use `me` as the value of the `accountId` path parameter.<p style=\"background-color:#FEEFB3; color:#9F6000\"><br>Note:</b> The `force_pmi_jbh_password` field under meeting settings is planned to be deprecated on September 22, 2019. This field will be replaced by another field that will provide the same functionality.</p> **Prerequisites**:  * The Sub Account must be a paid account.<br> **Scopes**: `account:write:admin` <br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | The account ID.

body = nil # Object | 

opts = { 
  option: 'option_example' # String | 
}

begin
  #Update Settings
  api_instance.account_settings_update(account_id, body, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->account_settings_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 
 **body** | **Object**|  | 
 **option** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_trusted_domain**
> Object account_trusted_domain(account_id)

Get Trusted Domains

Get trusted domains of a Sub Account. To get the trusted domains of a Master Account, use `me` as the value for the `accountId` path parameter.  **Prerequisites:**<br> * The Sub Account must be a paid account.<br> **Scope:** `account:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | The account ID.


begin
  #Get Trusted Domains
  result = api_instance.account_trusted_domain(account_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->account_trusted_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **accounts**
> AccountList accounts(opts)

List Sub Accounts

List all the Sub Accounts under the Master Account.<br> <aside>Only master accounts can create and have sub accounts. Zoom only assigns this privilege to trusted partners.</aside>  <br>**Prerequisites:**<br> * Pro or a higher paid account with Master Account option enabled. <br> **Scope**: `account:read:admin` <br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List Sub Accounts
  result = api_instance.accounts(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**AccountList**](AccountList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_account_lock_settings**
> InlineResponse20070 get_account_lock_settings(account_id)

Get Locked Settings

[Account Locked Settings](https://support.zoom.us/hc/en-us/articles/115005269866) allow you turn settings on or off for all users in your account. No user except the account admin or account owner can change these settings. With lock settings, you force the settings on for all users. Use this API to retrieve an account's locked settings.<p style=\"background-color:#FEEFB3; color:#9F6000\"><b>Note:</b> The <code>force_pmi_jbh_password</code> field under meeting settings was deprecated on September 22, 2019. Use <code>require_password_for_pmi_meetings</code> field as an alternative for the same functionality.</p>  **Prerequisites:** * Pro or a higher paid account with Master Account option enabled. <br> **Scope**: `account:read:admin`. <br>     **Scope:** account:read:admin

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | 


begin
  #Get Locked Settings
  result = api_instance.get_account_lock_settings(account_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->get_account_lock_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 

### Return type

[**InlineResponse20070**](InlineResponse20070.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_account_lock_settings**
> Object update_account_lock_settings(account_id, opts)

Update Locked Settings

[Account Locked Settings](https://support.zoom.us/hc/en-us/articles/115005269866) allow you turn settings on or off for all users in your account. No user except the account admin or account owner can change these settings. With lock settings, you force the settings on for all users.   Use this API to update an account's locked settings.<p style=\"background-color:#FEEFB3; color:#9F6000\"><br>Note:</b> The `force_pmi_jbh_password` field under meeting settings is planned to be deprecated on September 22, 2019. This field will be replaced by another field that will provide the same functionality.</p>  **Prerequisites:**<br> * Pro or a higher paid account with Master Account option enabled. <br> **Scope:** `account:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | 

opts = { 
  body: ZoomUs::Body51.new # Body51 | 
}

begin
  #Update Locked Settings
  result = api_instance.update_account_lock_settings(account_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->update_account_lock_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**Body51**](Body51.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_account_owner**
> Object update_account_owner(account_id, opts)

Update the Account Owner

The current account owner can [change the owner of an account](https://support.zoom.us/hc/en-us/articles/115005686983-Change-Account-Owner) to another user on the same account.<br> Use this API to change the owner of an account.  **Prerequisites**:<br> * Account owner or admin permissions.<br> * Pro or a higher plan with Master Account option enabled..  **Scopes:**  `account:write:admin` or `account:master`<br> <br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::AccountsApi.new

account_id = 'account_id_example' # String | Account Id of the account.

opts = { 
  body: ZoomUs::Body53.new # Body53 | 
}

begin
  #Update the Account Owner
  result = api_instance.update_account_owner(account_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling AccountsApi->update_account_owner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account Id of the account. | 
 **body** | [**Body53**](Body53.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



