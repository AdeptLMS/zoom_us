# ZoomUs::TSPApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tsp**](TSPApi.md#tsp) | **GET** /tsp | Get Account&#39;s TSP Information
[**tsp_update**](TSPApi.md#tsp_update) | **PATCH** /tsp | Update account&#39;s TSP information
[**tsp_url_update**](TSPApi.md#tsp_url_update) | **PATCH** /users/{userId}/tsp/settings | Set Global Dial-in URL for a TSP User
[**user_ts_ps**](TSPApi.md#user_ts_ps) | **GET** /users/{userId}/tsp | List User&#39;s TSP accounts
[**user_tsp**](TSPApi.md#user_tsp) | **GET** /users/{userId}/tsp/{tspId} | Get a User&#39;s TSP Account
[**user_tsp_create**](TSPApi.md#user_tsp_create) | **POST** /users/{userId}/tsp | Add a User&#39;s TSP Account
[**user_tsp_delete**](TSPApi.md#user_tsp_delete) | **DELETE** /users/{userId}/tsp/{tspId} | Delete a User&#39;s TSP Account
[**user_tsp_update**](TSPApi.md#user_tsp_update) | **PATCH** /users/{userId}/tsp/{tspId} | Update a TSP Account


# **tsp**
> InlineResponse20045 tsp

Get Account's TSP Information

Get information on Telephony Service Provider on an account level.<br><br> **Scopes:** `tsp:read:admin` `tsp:read`<br>    **Prerequisites:**<br> * A Pro or a higher plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TSPApi.new

begin
  #Get Account's TSP Information
  result = api_instance.tsp
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling TSPApi->tsp: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **tsp_update**
> tsp_update(body)

Update account's TSP information

Update information of the Telephony Service Provider set up on an account.<br> **Prerequisites**:<br> TSP account option should be enabled.<br> **Scopes:** `tsp:write:admin` `tsp:write`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TSPApi.new

body = ZoomUs::Body30.new # Body30 | TSP Account


begin
  #Update account's TSP information
  api_instance.tsp_update(body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling TSPApi->tsp_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body30**](Body30.md)| TSP Account | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **tsp_url_update**
> tsp_url_update(user_id, opts)

Set Global Dial-in URL for a TSP User

A global dial-in page can provide a list of global access numbers using which audio conferencing can be conducted. By calling this API, you can set the url for the global dial-in page of a user whose Zoom account has TSP and special TSP with third-party audio conferencing options enabled. <p></p> **Scopes:**`tsp:write:admin` `tsp:write`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TSPApi.new

user_id = 'user_id_example' # String | The userId or email address of the user.

opts = { 
  body: ZoomUs::TSPGlobalDialInURLSetting.new # TSPGlobalDialInURLSetting | Global dial-in URL of the user.
}

begin
  #Set Global Dial-in URL for a TSP User
  api_instance.tsp_url_update(user_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling TSPApi->tsp_url_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The userId or email address of the user. | 
 **body** | [**TSPGlobalDialInURLSetting**](TSPGlobalDialInURLSetting.md)| Global dial-in URL of the user. | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **user_ts_ps**
> InlineResponse20050 user_ts_ps(user_id)

List User's TSP accounts

A user can have a maximum of two TSP accounts. Use this API to list all TSP accounts of a user.<br><br> **Scopes:** `tsp:read:admin` `tsp:read`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TSPApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.


begin
  #List User's TSP accounts
  result = api_instance.user_ts_ps(user_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling TSPApi->user_ts_ps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 

### Return type

[**InlineResponse20050**](InlineResponse20050.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **user_tsp**
> TSPAccount user_tsp(user_id, tsp_id)

Get a User's TSP Account

Each user can have a maximum of two TSP accounts. Use this API to retrieve details of a specific TSP account enabled for a specific user.<br><br> **Scopes:** `tsp:read:admin` `tsp:read`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TSPApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

tsp_id = 'tsp_id_example' # String | TSP account ID.


begin
  #Get a User's TSP Account
  result = api_instance.user_tsp(user_id, tsp_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling TSPApi->user_tsp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **tsp_id** | **String**| TSP account ID. | 

### Return type

[**TSPAccount**](TSPAccount.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **user_tsp_create**
> TSPAccountsList2 user_tsp_create(user_id, body)

Add a User's TSP Account

Add a user's TSP account.<br><br> **Scopes:** `tsp:write:admin` `tsp:write`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TSPApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

body = ZoomUs::TSPAccountsList1.new # TSPAccountsList1 | TSP account.


begin
  #Add a User's TSP Account
  result = api_instance.user_tsp_create(user_id, body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling TSPApi->user_tsp_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **body** | [**TSPAccountsList1**](TSPAccountsList1.md)| TSP account. | 

### Return type

[**TSPAccountsList2**](TSPAccountsList2.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **user_tsp_delete**
> user_tsp_delete(user_id, tsp_id)

Delete a User's TSP Account

Delete a user's TSP account.<br><br> **Scopes:** `tsp:write:admin` `tsp:write`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TSPApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

tsp_id = 'tsp_id_example' # String | TSP account ID.


begin
  #Delete a User's TSP Account
  api_instance.user_tsp_delete(user_id, tsp_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling TSPApi->user_tsp_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **tsp_id** | **String**| TSP account ID. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **user_tsp_update**
> user_tsp_update(user_id, tsp_id, body)

Update a TSP Account

Update a user's TSP account.<br><br> **Scopes:** `tsp:write:admin` `tsp:write`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TSPApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.

tsp_id = 'tsp_id_example' # String | TSP account ID.

body = ZoomUs::TSPAccount1.new # TSPAccount1 | TSP account.


begin
  #Update a TSP Account
  api_instance.user_tsp_update(user_id, tsp_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling TSPApi->user_tsp_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 
 **tsp_id** | **String**| TSP account ID. | 
 **body** | [**TSPAccount1**](TSPAccount1.md)| TSP account. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



