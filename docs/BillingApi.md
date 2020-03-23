# ZoomUs::BillingApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_billing**](BillingApi.md#account_billing) | **GET** /accounts/{accountId}/billing | Get Billing Information
[**account_billing_update**](BillingApi.md#account_billing_update) | **PATCH** /accounts/{accountId}/billing | Update Billing Information
[**account_plan_addon_cancel**](BillingApi.md#account_plan_addon_cancel) | **PATCH** /accounts/{accountId}/plans/addons/status | Cancel  Additional Plans
[**account_plan_addon_create**](BillingApi.md#account_plan_addon_create) | **POST** /accounts/{accountId}/plans/addons | Add an Additional Plan
[**account_plan_addon_update**](BillingApi.md#account_plan_addon_update) | **PUT** /accounts/{accountId}/plans/addons | Update an Additional Plan
[**account_plan_base_delete**](BillingApi.md#account_plan_base_delete) | **PATCH** /accounts/{accountId}/plans/base/status | Cancel Base Plan
[**account_plan_base_update**](BillingApi.md#account_plan_base_update) | **PUT** /accounts/{accountId}/plans/base | Update a Base Plan
[**account_plan_create**](BillingApi.md#account_plan_create) | **POST** /accounts/{accountId}/plans | Subscribe to Plans
[**account_plans**](BillingApi.md#account_plans) | **GET** /accounts/{accountId}/plans | Get Plan Information
[**get_plan_usage**](BillingApi.md#get_plan_usage) | **GET** /accounts/{accountId}/plans/usage | Get Plan Usage


# **account_billing**
> InlineResponse20014 account_billing(account_id)

Get Billing Information

Get [billing information](https://support.zoom.us/hc/en-us/articles/201363263-About-Billing) of a Sub Account under a Master Account.<br><br>  **Prerequisites:** * Pro or a higher paid account with Master Account option enabled. <br> **Scope**:`billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | The account ID.


begin
  #Get Billing Information
  result = api_instance.account_billing(account_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_billing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_billing_update**
> account_billing_update(account_id, body)

Update Billing Information

Update [billing information](https://support.zoom.us/hc/en-us/articles/201363263-About-Billing) for a Sub Account under a Master account. <aside>This is only for a paid sub account that is paid by a master account.</aside><br><br>  **Prerequisites:** * Pro or a higher paid account with Master Account option enabled. <br> **Scope**:`billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | The account ID.

body = ZoomUs::Body12.new # Body12 | 


begin
  #Update Billing Information
  api_instance.account_billing_update(account_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_billing_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 
 **body** | [**Body12**](Body12.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_plan_addon_cancel**
> account_plan_addon_cancel(account_id, opts)

Cancel  Additional Plans

[Cancel additional plan](https://support.zoom.us/hc/en-us/articles/203634215-How-Do-I-Cancel-My-Subscription-) for a sub account. Only a Master account holder who pays for this sub account can cancel the add-on. The cancellation does not provide refund for the current subscription. The service remains active for the current session.  **Prerequisites:**<br> * Pro or a higher plan with Master Account option enabled. * The Sub Account must be a paid account.<br> **Scope:** `billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | 

opts = { 
  body: ZoomUs::Body49.new # Body49 | 
}

begin
  #Cancel  Additional Plans
  api_instance.account_plan_addon_cancel(account_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_plan_addon_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**Body49**](Body49.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_plan_addon_create**
> account_plan_addon_create(account_id, body)

Add an Additional Plan

Add an additional plan for a sub account. <br> <br>**Prerequisites:**<br> * Pro or a higher plan with Master Account enabled. * The Sub Account must be a paid account. The billing charges for the Sub Account must be paid by the Master Account.<br> **Scopes**: `billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | The account ID.

body = nil # Object | 


begin
  #Add an Additional Plan
  api_instance.account_plan_addon_create(account_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_plan_addon_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 
 **body** | **Object**|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_plan_addon_update**
> account_plan_addon_update(account_id, body)

Update an Additional Plan

Update an additional plan for a sub account.<br> <br>**Prerequisites:**<br> * Pro or a higher plan with Master Account enabled. * The Sub Account must be a paid account. The billing charges for the Sub Account must be paid by the Master Account.<br> **Scopes**: `billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | The account ID.

body = ZoomUs::Body14.new # Body14 | 


begin
  #Update an Additional Plan
  api_instance.account_plan_addon_update(account_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_plan_addon_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 
 **body** | [**Body14**](Body14.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_plan_base_delete**
> account_plan_base_delete(account_id, opts)

Cancel Base Plan

[Cancel a base plan](https://support.zoom.us/hc/en-us/articles/203634215-How-Do-I-Cancel-My-Subscription-) for a sub account. Only a master account holder who pays for this sub account can cancel the plan. The cancellation does not provide refund for the current subscription.  The service remains active for the current session.  **Scopes**: `billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | 

opts = { 
  body: ZoomUs::Body48.new # Body48 | 
}

begin
  #Cancel Base Plan
  api_instance.account_plan_base_delete(account_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_plan_base_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**Body48**](Body48.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_plan_base_update**
> account_plan_base_update(account_id, body)

Update a Base Plan

Update a base plan of a Sub Account. <aside> This can only update a base plan for a paid Sub Account that is paid by a Master Account.</aside><br><br> **Scopes:** `billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | The account ID.

body = ZoomUs::Body13.new # Body13 | 


begin
  #Update a Base Plan
  api_instance.account_plan_base_update(account_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_plan_base_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 
 **body** | [**Body13**](Body13.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_plan_create**
> account_plan_create(account_id, body)

Subscribe to Plans

Subscribe plans for a Sub Account under a Master Account. <aside> The plans can only be subscribed for an existing free Sub Account and the subscriptions charge should be paid by a Master Account.</aside><br><br> **Scopes**: `billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | The account ID.

body = ZoomUs::object.new # object | 


begin
  #Subscribe to Plans
  api_instance.account_plan_create(account_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_plan_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 
 **body** | [**object**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **account_plans**
> InlineResponse20015 account_plans(account_id)

Get Plan Information

Get plan information for a Sub Account under the Master account.  <aside> This is only for a Sub Account that is paid by a Master Account.</aside><br><br> **Scopes:** `billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | The account ID.


begin
  #Get Plan Information
  result = api_instance.account_plans(account_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->account_plans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account ID. | 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_plan_usage**
> InlineResponse20072 get_plan_usage(account_id)

Get Plan Usage

Get information on usage of [plans](https://marketplace.zoom.us/docs/api-reference/other-references/plans) on a Master Account.  **Prerequisite**:<br> Account type: Master Account on a paid Pro, Business or Enterprise plan.<br> **Scope:** `billing:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::BillingApi.new

account_id = 'account_id_example' # String | 


begin
  #Get Plan Usage
  result = api_instance.get_plan_usage(account_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling BillingApi->get_plan_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 

### Return type

[**InlineResponse20072**](InlineResponse20072.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



