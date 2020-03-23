# ZoomUs::RoomsLocationApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_azr_location**](RoomsLocationApi.md#add_azr_location) | **POST** /rooms/locations | Add a Location
[**change_parent_location**](RoomsLocationApi.md#change_parent_location) | **PUT** /rooms/locations/{locationId}/location | Change the Assigned Parent Location
[**get_zr_location_profile**](RoomsLocationApi.md#get_zr_location_profile) | **GET** /rooms/locations/{locationId} | Get Zoom Room Location Profile 
[**get_zr_location_settings**](RoomsLocationApi.md#get_zr_location_settings) | **GET** /rooms/locations/{locationId}/settings | Get Location Settings 
[**get_zr_location_structure**](RoomsLocationApi.md#get_zr_location_structure) | **GET** /rooms/locations/structure | Get Zoom Room Location Structure
[**list_zr_locations**](RoomsLocationApi.md#list_zr_locations) | **GET** /rooms/locations | List Zoom Room Locations
[**update_zoom_rooms_location_structure**](RoomsLocationApi.md#update_zoom_rooms_location_structure) | **PATCH** /rooms/locations/structure | Update Zoom Rooms Location Structure
[**update_zr_location_profile**](RoomsLocationApi.md#update_zr_location_profile) | **PATCH** /rooms/locations/{locationId} | Update Zoom Room Location Profile
[**update_zr_location_settings**](RoomsLocationApi.md#update_zr_location_settings) | **PATCH** /rooms/locations/{locationId}/settings | Update Location Settings


# **add_azr_location**
> InlineResponse20077 add_azr_location(opts)

Add a Location

Add a location to the [location hierarchial structure(s)](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) of Zoom Rooms in an account.  **Prerequisites:** * Account owner or admin permissions. * Zoom Rooms Version 4.0 or higher<br><br> **Scopes:** `room:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

opts = { 
  body: ZoomUs::Body56.new # Body56 | 
}

begin
  #Add a Location
  result = api_instance.add_azr_location(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->add_azr_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body56**](Body56.md)|  | [optional] 

### Return type

[**InlineResponse20077**](InlineResponse20077.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **change_parent_location**
> Object change_parent_location(location_id, opts)

Change the Assigned Parent Location

An account owner of a Zoom account can establish a [Zoom Rooms Location Hierarchy](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) to better organize Zoom Rooms spread accross various location. The location can be structured in a hierarchy with Country being the top-level location, followed by city, campus, building, and floor. The location in the lower level in the hierarchy is considered as a child of the location that is a level above in the hierarchy. Use this API to change the parent location of a child location. <br><br> For instance, if the location hierarchy is structured in a way where there are two campuses (Campus 1, and Campus 2) in a City and Campus 1 consists of a building named Building 1 with a floor where Zoom Rooms are located, and you would like to rearrange the structure so that Building 1 along with its child locations (floor and Zoom Rooms) are relocated directly under Campus 2 instead of Campus 1, you must provide the location ID of Building 1 in the path parameter of this request and the location ID of Campus 2 as the value of `parent_location_id` in the  request body.<br><br> **Prerequisite:**<br> * Account owner or admin permission * Zoom Rooms version 4.0 or higher<br> **Scopes:** `room:write:admin`<br><br> /n

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

location_id = 'location_id_example' # String | 

opts = { 
  body: ZoomUs::Body65.new # Body65 | 
}

begin
  #Change the Assigned Parent Location
  result = api_instance.change_parent_location(location_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->change_parent_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**|  | 
 **body** | [**Body65**](Body65.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_zr_location_profile**
> InlineResponse20078 get_zr_location_profile(location_id)

Get Zoom Room Location Profile 

Each location type of the [Zoom Rooms location hierarchy](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) has a profile page that includes information such as name of the location, address, support email, etc. Use this API to retrieve information about a specific Zoom Rooms location type such as information about the city where the Zoom Rooms is located.  **Prerequisite:**<br> * Account owner or admin permission * Zoom Rooms version 4.0 or higher<br> **Scopes:** `room:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

location_id = 'location_id_example' # String | Unique identifier of the location type. This can be retrieved using the [List Zoom Room Location API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms-location/listzrlocations) (Id property in the response).


begin
  #Get Zoom Room Location Profile 
  result = api_instance.get_zr_location_profile(location_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->get_zr_location_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| Unique identifier of the location type. This can be retrieved using the [List Zoom Room Location API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms-location/listzrlocations) (Id property in the response). | 

### Return type

[**InlineResponse20078**](InlineResponse20078.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_zr_location_settings**
> Object get_zr_location_settings(setting_type, location_id)

Get Location Settings 

Get information on meeting or alert settings applied to Zoom Rooms located in a specific location. By default, only **Meeting Settings** are returned. To view only **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter.<br><br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

setting_type = 'meeting' # String | The type of setting that you would like to retrieve.<br> `alert`: Alert Settings applied on the Zoom Rooms Account.<br> `meeting`: Meeting settings of the Zoom Rooms Account.

location_id = 'location_id_example' # String | Unique identifier of the location type. This can be retrieved using the [List Zoom Room Location API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms-location/listzrlocations) (Id property in the response).


begin
  #Get Location Settings 
  result = api_instance.get_zr_location_settings(setting_type, location_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->get_zr_location_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setting_type** | **String**| The type of setting that you would like to retrieve.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account. | [default to meeting]
 **location_id** | **String**| Unique identifier of the location type. This can be retrieved using the [List Zoom Room Location API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms-location/listzrlocations) (Id property in the response). | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_zr_location_structure**
> InlineResponse20079 get_zr_location_structure

Get Zoom Room Location Structure

Get the [location hierarchial structure(s)](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) applied on the Zoom Rooms in an account.<br><br> **Prerequisites:**<br> * Zoom Rooms version 4.0 or higher * Account owner or admin permissions<br> **Scopes:** `room:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

begin
  #Get Zoom Room Location Structure
  result = api_instance.get_zr_location_structure
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->get_zr_location_structure: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20079**](InlineResponse20079.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_zr_locations**
> InlineResponse20076 list_zr_locations(opts)

List Zoom Room Locations

A Zoom account owner or a Zoom Room administrator can establish a [location hierarchy](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) to help manage Zoom Rooms that are spread among a variety of locations. Use this API to list the different location types used for Zoom Rooms in an account.<br><br> **Prerequisites:** * Account owner or admin permissions. * Zoom Rooms Version 4.0 or higher<br><br> **Scopes:** `room:read:admin`<br>     

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

opts = { 
  parent_location_id: 'parent_location_id_example', # String | A unique identifier for the parent location. For instance, if a Zoom Room is located in Floor 1 of Building A, the location of Building A will be the parent location of Floor 1. Use this parameter to filter the response by a specific location hierarchy level.
  type: 'type_example', # String | Use this field to filter the response by the type of location. The value can be one of the following: `country`, `states`, `city`, `campus`, `building`, `floor`. 
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #List Zoom Room Locations
  result = api_instance.list_zr_locations(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->list_zr_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_location_id** | **String**| A unique identifier for the parent location. For instance, if a Zoom Room is located in Floor 1 of Building A, the location of Building A will be the parent location of Floor 1. Use this parameter to filter the response by a specific location hierarchy level. | [optional] 
 **type** | **String**| Use this field to filter the response by the type of location. The value can be one of the following: &#x60;country&#x60;, &#x60;states&#x60;, &#x60;city&#x60;, &#x60;campus&#x60;, &#x60;building&#x60;, &#x60;floor&#x60;.  | [optional] 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse20076**](InlineResponse20076.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_zoom_rooms_location_structure**
> Object update_zoom_rooms_location_structure(opts)

Update Zoom Rooms Location Structure

Update the [location hierarchial structure(s)](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) applied on the Zoom Rooms in an account.<br><br> **Prerequisites:**<br> * Zoom Rooms version 4.0 or higher * Account owner or admin permissions<br> **Scopes:** `room:write:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

opts = { 
  body: ZoomUs::Body58.new # Body58 | 
}

begin
  #Update Zoom Rooms Location Structure
  result = api_instance.update_zoom_rooms_location_structure(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->update_zoom_rooms_location_structure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body58**](Body58.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_zr_location_profile**
> Object update_zr_location_profile(location_id, opts)

Update Zoom Room Location Profile

Each location type of the [Zoom Rooms location hierarchy](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) has a profile page that includes information such as name of the location, address, support email, etc. Use this API to update information about a specific Zoom Rooms location type such as information about the city where the Zoom Rooms is located.  **Prerequisite:**<br> * Account owner or admin permission * Zoom Rooms version 4.0 or higher<br> **Scopes:** `room:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

location_id = 'location_id_example' # String | Unique Identifier of the location. This can be retrieved from the [List Zoom Room Locations](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms-location/listzrlocations) API.

opts = { 
  body: ZoomUs::Body57.new # Body57 | 
}

begin
  #Update Zoom Room Location Profile
  result = api_instance.update_zr_location_profile(location_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->update_zr_location_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| Unique Identifier of the location. This can be retrieved from the [List Zoom Room Locations](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms-location/listzrlocations) API. | 
 **body** | [**Body57**](Body57.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_zr_location_settings**
> Object update_zr_location_settings(setting_type, location_id, opts)

Update Location Settings

Update information on either meeting or alert settings applied to Zoom Rooms located in a specific location. To update **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter. Similarly, to update **Meeting Settings**, specify `meeting` as the value of the `setting_type` query parameter.<br><br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:write:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RoomsLocationApi.new

setting_type = 'meeting' # String | The type of setting that you would like to update.<br> `alert`: Alert Settings applied on the Zoom Rooms Account.<br> `meeting`: Meeting settings of the Zoom Rooms Account.

location_id = 'location_id_example' # String | Unique identifier of the location type. This can be retrieved using the [List Zoom Room Location API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms-location/listzrlocations) (Id property in the response).

opts = { 
  body: nil # Object | 
}

begin
  #Update Location Settings
  result = api_instance.update_zr_location_settings(setting_type, location_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RoomsLocationApi->update_zr_location_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setting_type** | **String**| The type of setting that you would like to update.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account. | [default to meeting]
 **location_id** | **String**| Unique identifier of the location type. This can be retrieved using the [List Zoom Room Location API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms-location/listzrlocations) (Id property in the response). | 
 **body** | **Object**|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



