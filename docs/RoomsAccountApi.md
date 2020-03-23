# ZoomUs::RoomsAccountApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_zr_account_profile**](RoomsAccountApi.md#get_zr_account_profile) | **GET** /rooms/account_profile | Get Zoom Room Account Profile
[**get_zr_account_settings**](RoomsAccountApi.md#get_zr_account_settings) | **GET** /rooms/account_settings | Get Zoom Room Account Settings
[**update_zoom_room_acc_settings**](RoomsAccountApi.md#update_zoom_room_acc_settings) | **PATCH** /rooms/account_settings | Update Zoom Room Account Settings
[**update_zr_acc_profile**](RoomsAccountApi.md#update_zr_acc_profile) | **PATCH** /rooms/account_profile | Update Zoom Room Account Profile


# **get_zr_account_profile**
> InlineResponse20075 get_zr_account_profile

Get Zoom Room Account Profile

Get details on the account profile of a Zoom Room. This information can only by accessed either by the Zoom Room Account Owner or a user with Zoom Rooms admin permission. To get information on an individual Room Profile, use [Get Zoom Room Profile API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/getzrprofile) instead.  **Prerequisites:**<br> * Zoom account owner or Zoom Rooms admin permissions<br>  **Scopes:** `room:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsAccountApi.new

begin
  #Get Zoom Room Account Profile
  result = api_instance.get_zr_account_profile
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsAccountApi->get_zr_account_profile: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20075**](InlineResponse20075.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_zr_account_settings**
> Object get_zr_account_settings(setting_type)

Get Zoom Room Account Settings

Get details on Account Settings of a Zoom Room. With this API, you can view either the **Account Meeting Settings** or the **Alert Settings** (Client Alert Settings and Notfication Settings) of the Zoom Rooms account. By default, only **Account Meeting Settings** are returned. To view only **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter.<br><br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:read:admin`<br><br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsAccountApi.new

setting_type = 'meeting' # String | The type of setting that you would like to retrieve.<br> `alert`: Alert Settings applied on the Zoom Rooms Account.<br> `meeting`: Meeting settings of the Zoom Rooms Account.


begin
  #Get Zoom Room Account Settings
  result = api_instance.get_zr_account_settings(setting_type)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsAccountApi->get_zr_account_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setting_type** | **String**| The type of setting that you would like to retrieve.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account. | [default to meeting]

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_zoom_room_acc_settings**
> Object update_zoom_room_acc_settings(setting_type, opts)

Update Zoom Room Account Settings

Update account settings applied for Zoom Rooms in a Zoom account. With this API, you can update either the **Account Meeting Settings** or the **Alert Settings** (Client Alert Settings and Notfication Settings) of the Zoom Rooms account by specifying the required setting type in the `setting_type` parameter. To update only **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter and to update only **Account Meeting Settings**, specify `meeting` as the value of the `setting_type` query parameter.<br><br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsAccountApi.new

setting_type = 'meeting' # String | The type of setting that you would like to update.<br> `alert`: Alert Settings applied on the Zoom Rooms Account.<br> `meeting`: Meeting settings of the Zoom Rooms Account.

opts = { 
  body: nil # Object | 
}

begin
  #Update Zoom Room Account Settings
  result = api_instance.update_zoom_room_acc_settings(setting_type, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsAccountApi->update_zoom_room_acc_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setting_type** | **String**| The type of setting that you would like to update.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account. | [default to meeting]
 **body** | **Object**|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_zr_acc_profile**
> Object update_zr_acc_profile(opts)

Update Zoom Room Account Profile

Update information on the account profile of a Zoom Room. This information can only by accessed either by the Zoom Room Account Owner or a user with Zoom Rooms admin permission. To update information on an individual Room Profile, use [Update Zoom Room Profile API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/updatezrprofile) instead.  **Prerequisites:**<br> * Zoom account owner or Zoom Rooms admin permissions<br>  **Scopes:** `room:write:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsAccountApi.new

opts = { 
  body: ZoomUs::Body55.new # Body55 | 
}

begin
  #Update Zoom Room Account Profile
  result = api_instance.update_zr_acc_profile(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsAccountApi->update_zr_acc_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body55**](Body55.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



