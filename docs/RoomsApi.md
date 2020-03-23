# ZoomUs::RoomsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_a_room**](RoomsApi.md#add_a_room) | **POST** /rooms | Add a Zoom Room
[**change_zr_location**](RoomsApi.md#change_zr_location) | **PUT** /rooms/{roomId}/location | Change a Zoom Room&#39;s Location
[**delete_a_zoom_room**](RoomsApi.md#delete_a_zoom_room) | **DELETE** /rooms/{roomId} | Delete a Zoom Room
[**get_zr_profile**](RoomsApi.md#get_zr_profile) | **GET** /rooms/{roomId} | Get Zoom Room Profile
[**get_zr_settings**](RoomsApi.md#get_zr_settings) | **GET** /rooms/{roomId}/settings | Get Zoom Room Settings
[**list_zoom_rooms**](RoomsApi.md#list_zoom_rooms) | **GET** /rooms | List Zoom Rooms
[**list_zr_devices**](RoomsApi.md#list_zr_devices) | **GET** /rooms/{roomId}/devices | List Zoom Room Devices
[**update_room_profile**](RoomsApi.md#update_room_profile) | **PATCH** /rooms/{roomId} | Update a Zoom Room Profile
[**update_zr_settings**](RoomsApi.md#update_zr_settings) | **PATCH** /rooms/{roomId}/settings | Update Zoom Room Settings


# **add_a_room**
> InlineResponse201 add_a_room(opts)

Add a Zoom Room

Use this API to [add a Zoom Room](https://support.zoom.us/hc/en-us/articles/202822279-Add-Zoom-Rooms-on-Web-Portal) to a Zoom account.<br><br> **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:write:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

opts = { 
  body: ZoomUs::Body2.new # Body2 | 
}

begin
  #Add a Zoom Room
  result = api_instance.add_a_room(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->add_a_room: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body2**](Body2.md)|  | [optional] 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **change_zr_location**
> Object change_zr_location(room_id, opts)

Change a Zoom Room's Location

An account owner of a Zoom account can establish a [Zoom Rooms Location Hierarchy](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) to better organize Zoom Rooms spread accress various location. The location can be structured in a hierarchy with Country being the top-level location, followed by city, campus, building, and floor. Use this API to assign a new location for a Zoom Room. Note that the Zoom Room can be assigned only to the lowest level location available in the hierarchy. **Prerequisite:**<br> * Account owner or admin permission * Zoom Rooms version 4.0 or higher<br> **Scopes:** `room:write:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

room_id = 'room_id_example' # String | Unique Identifier of the Zoom Room.

opts = { 
  body: ZoomUs::Body64.new # Body64 | 
}

begin
  #Change a Zoom Room's Location
  result = api_instance.change_zr_location(room_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->change_zr_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **room_id** | **String**| Unique Identifier of the Zoom Room. | 
 **body** | [**Body64**](Body64.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_a_zoom_room**
> Object delete_a_zoom_room(room_id)

Delete a Zoom Room

[Remove](https://support.zoom.us/hc/en-us/articles/360033432032-Zoom-Room-Device-Profiles#h_e55b2092-c418-4b02-819f-44de51448900) a specific Zoom Room profile from a Zoom account.<br><br> **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:write:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

room_id = 'room_id_example' # String | Unique Identifier of a Zoom Room.


begin
  #Delete a Zoom Room
  result = api_instance.delete_a_zoom_room(room_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->delete_a_zoom_room: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **room_id** | **String**| Unique Identifier of a Zoom Room. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_zr_profile**
> InlineResponse20080 get_zr_profile(room_id)

Get Zoom Room Profile

 Zoom Rooms is a software-based room system that provides an integrated experience for audio conferencing, wireless screen sharing and video conferencing. Use this API to get detailed information on a specific Zoom Room in a Zoom account.  **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

room_id = 'room_id_example' # String | Unique Identifier of the Zoom Room. This can be retrieved from the response of [List Zoom Rooms](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/listzoomrooms) API.


begin
  #Get Zoom Room Profile
  result = api_instance.get_zr_profile(room_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->get_zr_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **room_id** | **String**| Unique Identifier of the Zoom Room. This can be retrieved from the response of [List Zoom Rooms](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/listzoomrooms) API. | 

### Return type

[**InlineResponse20080**](InlineResponse20080.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_zr_settings**
> Object get_zr_settings(setting_type, room_id)

Get Zoom Room Settings

Get information on meeting or alert settings applied to a specific Zoom Room. By default, only **Meeting Settings** are returned. To view only **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter.<br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

setting_type = 'meeting' # String | The type of setting that you would like to retrieve.<br> `alert`: Alert Settings applied on the Zoom Rooms Account.<br> `meeting`: Meeting settings of the Zoom Rooms Account.

room_id = 'room_id_example' # String | Unique identifier of the Zoom Room.


begin
  #Get Zoom Room Settings
  result = api_instance.get_zr_settings(setting_type, room_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->get_zr_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setting_type** | **String**| The type of setting that you would like to retrieve.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account. | [default to meeting]
 **room_id** | **String**| Unique identifier of the Zoom Room. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_zoom_rooms**
> InlineResponse2002 list_zoom_rooms(opts)

List Zoom Rooms

Zoom Rooms is a software-based room system that provides an integrated experience for audio conferencing, wireless screen sharing and video conferencing. Use this API to list all the existing [Zoom Rooms](https://support.zoom.us/hc/en-us/articles/207483343-Getting-Started-with-Zoom-Rooms) in a Zoom account.<br><br> **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

opts = { 
  status: 'status_example', # String | The status of the Zoom Room.
  type: 'type_example', # String | Type of the Zoom Rooms.
  unassigned_rooms: false, # BOOLEAN | Use this query parameter with a value of `true` if you would like to see Zoom Rooms in your account that have not been assigned to anyone yet.
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  location_id: 'location_id_example' # String | Parent location ID of the Zoom Room.
}

begin
  #List Zoom Rooms
  result = api_instance.list_zoom_rooms(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->list_zoom_rooms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| The status of the Zoom Room. | [optional] 
 **type** | **String**| Type of the Zoom Rooms. | [optional] 
 **unassigned_rooms** | **BOOLEAN**| Use this query parameter with a value of &#x60;true&#x60; if you would like to see Zoom Rooms in your account that have not been assigned to anyone yet. | [optional] [default to false]
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
 **location_id** | **String**| Parent location ID of the Zoom Room. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_zr_devices**
> InlineResponse20081 list_zr_devices(room_id)

List Zoom Room Devices

List information about the devices that are being used for a specific [Zoom Room](https://support.zoom.us/hc/en-us/articles/207483343-Getting-Started-with-Zoom-Rooms) in an account.  **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> * Account owner or admin permissions. **Scopes**: `room:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

room_id = 'room_id_example' # String | Unique Identifier of the Zoom Room. This can be retrieved from the response of [List Zoom Rooms](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/listzoomrooms) API.


begin
  #List Zoom Room Devices
  result = api_instance.list_zr_devices(room_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->list_zr_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **room_id** | **String**| Unique Identifier of the Zoom Room. This can be retrieved from the response of [List Zoom Rooms](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/listzoomrooms) API. | 

### Return type

[**InlineResponse20081**](InlineResponse20081.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_room_profile**
> Object update_room_profile(room_id, opts)

Update a Zoom Room Profile

Update basic information on a specific Zoom Room in a Zoom account.<br>  **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:write:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

room_id = 'room_id_example' # String | Unique Identifier of a Zoom Room.

opts = { 
  body: ZoomUs::Body59.new # Body59 | 
}

begin
  #Update a Zoom Room Profile
  result = api_instance.update_room_profile(room_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->update_room_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **room_id** | **String**| Unique Identifier of a Zoom Room. | 
 **body** | [**Body59**](Body59.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_zr_settings**
> Object update_zr_settings(room_id, opts)

Update Zoom Room Settings

Update either meeting or alert settings applied to a specific Zoom Room. To update **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter. To update **Meeting Settings**, specify `meeting` as the value of the `setting_type` query parameter.<br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:write:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsApi.new

room_id = 'room_id_example' # String | Unique Identifier of the Zoom Room.

opts = { 
  body: nil, # Object | 
  setting_type: 'setting_type_example' # String | The type of setting that you would like to update.<br> `alert`: Alert Settings applied on the Zoom Rooms Account.<br> `meeting`: Meeting settings of the Zoom Rooms Account.
}

begin
  #Update Zoom Room Settings
  result = api_instance.update_zr_settings(room_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsApi->update_zr_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **room_id** | **String**| Unique Identifier of the Zoom Room. | 
 **body** | **Object**|  | [optional] 
 **setting_type** | **String**| The type of setting that you would like to update.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account. | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



