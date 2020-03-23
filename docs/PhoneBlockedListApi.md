# ZoomUs::PhoneBlockedListApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_anumber_to_blocked_list**](PhoneBlockedListApi.md#add_anumber_to_blocked_list) | **POST** /phone/blocked_list | Create a Blocked List
[**delete_a_blocked_list**](PhoneBlockedListApi.md#delete_a_blocked_list) | **DELETE** /phone/blocked_list/{blockedListId} | Delete a Blocked List
[**get_a_blocked_list**](PhoneBlockedListApi.md#get_a_blocked_list) | **GET** /phone/blocked_list/{blockedListId} | Get Blocked List Details
[**list_blocked_list**](PhoneBlockedListApi.md#list_blocked_list) | **GET** /phone/blocked_list | List Blocked Lists
[**update_blocked_list**](PhoneBlockedListApi.md#update_blocked_list) | **PATCH** /phone/blocked_list/{blockedListId} | Update a Blocked List


# **add_anumber_to_blocked_list**
> InlineResponse20125 add_anumber_to_blocked_list(opts)

Create a Blocked List

A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.<br>Use this API to create a blocked list and add a number to that blocked list.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:write:admin`<br>     

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneBlockedListApi.new

opts = { 
  body: ZoomUs::Body76.new # Body76 | 
}

begin
  #Create a Blocked List
  result = api_instance.add_anumber_to_blocked_list(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneBlockedListApi->add_anumber_to_blocked_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body76**](Body76.md)|  | [optional] 

### Return type

[**InlineResponse20125**](InlineResponse20125.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_a_blocked_list**
> Object delete_a_blocked_list(blocked_list_id)

Delete a Blocked List

A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). <br>Use this API to delete a blocked list and therefore removing the associated number from the blocked list. The number will be unblocked after the deletion.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:write:admin`<br>       

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneBlockedListApi.new

blocked_list_id = 'blocked_list_id_example' # String | Unique Identifier of the blocked list. This can be retrieved from the List Blocked List API.


begin
  #Delete a Blocked List
  result = api_instance.delete_a_blocked_list(blocked_list_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneBlockedListApi->delete_a_blocked_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blocked_list_id** | **String**| Unique Identifier of the blocked list. This can be retrieved from the List Blocked List API. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_a_blocked_list**
> InlineResponse20098 get_a_blocked_list(blocked_list_id)

Get Blocked List Details

A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.<br>Use this API to get information about a specific blocked list.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:read:admin`<br>       

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneBlockedListApi.new

blocked_list_id = 'blocked_list_id_example' # String | Unique Identifier of the blocked list.


begin
  #Get Blocked List Details
  result = api_instance.get_a_blocked_list(blocked_list_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneBlockedListApi->get_a_blocked_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blocked_list_id** | **String**| Unique Identifier of the blocked list. | 

### Return type

[**InlineResponse20098**](InlineResponse20098.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_blocked_list**
> InlineResponse20097 list_blocked_list(opts)

List Blocked Lists

A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.<br>Use this API to list all the blocked lists in an acccount.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:read:admin`<br>     

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneBlockedListApi.new

opts = { 
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  page_size: 30 # Integer | The total number of records returned from a single API call.
}

begin
  #List Blocked Lists
  result = api_instance.list_blocked_list(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneBlockedListApi->list_blocked_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
 **page_size** | **Integer**| The total number of records returned from a single API call. | [optional] [default to 30]

### Return type

[**InlineResponse20097**](InlineResponse20097.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_blocked_list**
> Object update_blocked_list(blocked_list_id, opts)

Update a Blocked List

A Zoom account owner or a user with admin privilege can block phone numbers for phone users in an account. Blocked numbers can be inbound (numbers will be blocked from calling in) and outbound (phone users in your account won't be able to dial those numbers). Blocked callers will hear a generic message stating that the person they are calling is not available.<br>Use this API to update information on the blocked list.<br> **Prerequisites:** * Pro or higher account plan with Zoom phone license<br> **Scope:** `phone:write:admin`<br>      

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneBlockedListApi.new

blocked_list_id = 'blocked_list_id_example' # String | Unique Identifier for the blocked list.

opts = { 
  body: ZoomUs::Body77.new # Body77 | 
}

begin
  #Update a Blocked List
  result = api_instance.update_blocked_list(blocked_list_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneBlockedListApi->update_blocked_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blocked_list_id** | **String**| Unique Identifier for the blocked list. | 
 **body** | [**Body77**](Body77.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



