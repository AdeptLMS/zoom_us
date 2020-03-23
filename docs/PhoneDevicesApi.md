# ZoomUs::PhoneDevicesApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_phone_device**](PhoneDevicesApi.md#add_phone_device) | **POST** /phone/devices | Add a Device
[**delete_a_device**](PhoneDevicesApi.md#delete_a_device) | **DELETE** /phone/devices/{deviceId} | Delete a Device
[**get_a_device**](PhoneDevicesApi.md#get_a_device) | **GET** /phone/devices/{deviceId} | Get Device Details
[**list_phone_devices**](PhoneDevicesApi.md#list_phone_devices) | **GET** /phone/devices | List Devices
[**update_a_device**](PhoneDevicesApi.md#update_a_device) | **PATCH** /phone/devices/{deviceId} | Update a Device


# **add_phone_device**
> Object add_phone_device(opts)

Add a Device

By default, all Zoom Phone users can make and receive calls using the Zoom desktop and mobile applications. Additionally, if a desk phone is required, use this API to [add a desk phone and assign it](https://support.zoom.us/hc/en-us/articles/360021119092#h_5ca07504-68a8-4c3d-ad0e-c1d3594436da) to a user.  **Prerequisites:**<br> * Pro or a higher account with Zoom Phone license * Account owner or admin permissions * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneDevicesApi.new

opts = { 
  body: ZoomUs::Body62.new # Body62 | 
}

begin
  #Add a Device
  result = api_instance.add_phone_device(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneDevicesApi->add_phone_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body62**](Body62.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_a_device**
> Object delete_a_device(device_id)

Delete a Device

Remove a [desk phone device](https://support.zoom.us/hc/en-us/articles/360021119092) from the Zoom Phone System Management.<br><br> **Prerequisites:**<br> * Pro or a higher account with Zoom Phone license * Account owner or admin permissions * Device must not have been assigned to a user.<br> **Scopes:** `phone:write:admin`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneDevicesApi.new

device_id = 'device_id_example' # String | Unique Identifier of the device.


begin
  #Delete a Device
  result = api_instance.delete_a_device(device_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneDevicesApi->delete_a_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Unique Identifier of the device. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_a_device**
> InlineResponse20089 get_a_device(device_id)

Get Device Details

Get detailed information about a specific [desk phone device](https://support.zoom.us/hc/en-us/articles/360021119092).<br><br> **Prerequisites:**<br> * Pro or a higher account with Zoom Phone license * Account owner or admin permissions<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneDevicesApi.new

device_id = 'device_id_example' # String | Unique Identifier of the device.


begin
  #Get Device Details
  result = api_instance.get_a_device(device_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneDevicesApi->get_a_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Unique Identifier of the device. | 

### Return type

[**InlineResponse20089**](InlineResponse20089.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_phone_devices**
> InlineResponse20088 list_phone_devices(type, opts)

List Devices

List all the [desk phone devices](https://support.zoom.us/hc/en-us/articles/360021119092) that are configured with Zoom Phone on an account. To view devices that have not yet been assigned to a user, set the value of the `type` query parameter as `unassigned` and to view devices that have been assigned, set the value as `assigned`.<br><br> **Scopes:** `phone:read:admin`  <br> **Prerequisites:**<br> * Pro or a higher account with Zoom Phone license * Account owner or admin permissions<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneDevicesApi.new

type = 'type_example' # String | State of the device. The value should be either `assigned` to list devices that have been assigned to user(s) or `unassigned` to list devices that have not yet been assigned to any user in the Zoom account.

opts = { 
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  page_size: 30 # Integer | The number of records returned within a single API call.
}

begin
  #List Devices
  result = api_instance.list_phone_devices(type, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneDevicesApi->list_phone_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| State of the device. The value should be either &#x60;assigned&#x60; to list devices that have been assigned to user(s) or &#x60;unassigned&#x60; to list devices that have not yet been assigned to any user in the Zoom account. | 
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]

### Return type

[**InlineResponse20088**](InlineResponse20088.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_a_device**
> Object update_a_device(device_id, opts)

Update a Device

Update information of a [desk phone device](https://support.zoom.us/hc/en-us/articles/360021119092).<br><br> **Prerequisites:**<br> * Pro or a higher account with Zoom Phone license * Account owner or admin permissions<br> **Scopes:** `phone:write:admin`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneDevicesApi.new

device_id = 'device_id_example' # String | Unique Identifier of the Device.

opts = { 
  body: ZoomUs::Body63.new # Body63 | 
}

begin
  #Update a Device
  result = api_instance.update_a_device(device_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneDevicesApi->update_a_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| Unique Identifier of the Device. | 
 **body** | [**Body63**](Body63.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



