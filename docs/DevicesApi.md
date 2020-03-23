# ZoomUs::DevicesApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**device_create**](DevicesApi.md#device_create) | **POST** /h323/devices | Create a H.323/SIP Device
[**device_delete**](DevicesApi.md#device_delete) | **DELETE** /h323/devices/{deviceId} | Delete a H.323/SIP Device
[**device_list**](DevicesApi.md#device_list) | **GET** /h323/devices | List H.323/SIP Devices
[**device_update**](DevicesApi.md#device_update) | **PATCH** /h323/devices/{deviceId} | Update a H.323/SIP Device


# **device_create**
> device_create(body)

Create a H.323/SIP Device

A H.323 or SIP device can make a video call to a [Room Connector](https://support.zoom.us/hc/en-us/articles/201363273-Getting-Started-With-H-323-SIP-Room-Connector) to join a Zoom cloud meeting. A Room Connector can also call out to a H.323 or SIP device to join a Zoom cloud meeting. Use this API to add a H.323/SIP device to your Zoom account<br><br> **Scopes:** `h323:write:admin`<br>  <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::DevicesApi.new

body = ZoomUs::TheH323SIPDeviceObject_.new # TheH323SIPDeviceObject_ | H.323/SIP device.


begin
  #Create a H.323/SIP Device
  api_instance.device_create(body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling DevicesApi->device_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TheH323SIPDeviceObject_**](TheH323SIPDeviceObject_.md)| H.323/SIP device. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **device_delete**
> device_delete(device_id)

Delete a H.323/SIP Device

A H.323 or SIP device can make a video call to a [Room Connector](https://support.zoom.us/hc/en-us/articles/201363273-Getting-Started-With-H-323-SIP-Room-Connector) to join a Zoom cloud meeting. A Room Connector can also call out to a H.323 or SIP device to join a Zoom cloud meeting. Use this API to delete a H.323/SIP device from your Zoom account.<br><br> **Scopes:** `h323:write:admin`<br>  <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::DevicesApi.new

device_id = 'device_id_example' # String | The device ID.


begin
  #Delete a H.323/SIP Device
  api_instance.device_delete(device_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling DevicesApi->device_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| The device ID. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **device_list**
> H323SIPDeviceList device_list(opts)

List H.323/SIP Devices

A H.323 or SIP device can make a video call to a [Room Connector](https://support.zoom.us/hc/en-us/articles/201363273-Getting-Started-With-H-323-SIP-Room-Connector) to join a Zoom cloud meeting. A Room Connector can also call out to a H.323 or SIP device to join a Zoom cloud meeting. Use this API to list all H.323/SIP Devices on a Zoom account.<br><br> **Scopes:** `h323:read:admin`<br>  <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::DevicesApi.new

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List H.323/SIP Devices
  result = api_instance.device_list(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling DevicesApi->device_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**H323SIPDeviceList**](H323SIPDeviceList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **device_update**
> device_update(device_id, body)

Update a H.323/SIP Device

A H.323 or SIP device can make a video call to a [Room Connector](https://support.zoom.us/hc/en-us/articles/201363273-Getting-Started-With-H-323-SIP-Room-Connector) to join a Zoom cloud meeting. A Room Connector can also call out to a H.323 or SIP device to join a Zoom cloud meeting. Use this API to edit information of a H.323/SIP device from your Zoom account.<br><br> **Scopes:** `h323:write:admin`<br>  <br>

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::DevicesApi.new

device_id = 'device_id_example' # String | The device ID.

body = ZoomUs::TheH323SIPDeviceObject1.new # TheH323SIPDeviceObject1 | 


begin
  #Update a H.323/SIP Device
  api_instance.device_update(device_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling DevicesApi->device_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| The device ID. | 
 **body** | [**TheH323SIPDeviceObject1**](TheH323SIPDeviceObject1.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



