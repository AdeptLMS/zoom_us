# ZoomUs::TrackingFieldApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trackingfield_create**](TrackingFieldApi.md#trackingfield_create) | **POST** /tracking_fields | Create a Tracking Field
[**trackingfield_delete**](TrackingFieldApi.md#trackingfield_delete) | **DELETE** /tracking_fields/{fieldId} | Delete a Tracking Field
[**trackingfield_get**](TrackingFieldApi.md#trackingfield_get) | **GET** /tracking_fields/{fieldId} | Get a Tracking Field
[**trackingfield_list**](TrackingFieldApi.md#trackingfield_list) | **GET** /tracking_fields | List Tracking Fields
[**trackingfield_update**](TrackingFieldApi.md#trackingfield_update) | **PATCH** /tracking_fields/{fieldId} | Update a Tracking Field


# **trackingfield_create**
> InlineResponse2018 trackingfield_create(body)

Create a Tracking Field

[Tracking fields](https://support.zoom.us/hc/en-us/articles/115000293426-Scheduling-Tracking-Fields) allow you to analyze usage by various fields within an organization.<br> Use this API to create a new tracking field.<br><br> **Scope:** `trackingfield:write:admin`<br>  <br> **Prerequisites:** * Business, Education, API or higher plan

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TrackingFieldApi.new

body = ZoomUs::TrackingField.new # TrackingField | Tracking Field


begin
  #Create a Tracking Field
  result = api_instance.trackingfield_create(body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling TrackingFieldApi->trackingfield_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrackingField**](TrackingField.md)| Tracking Field | 

### Return type

[**InlineResponse2018**](InlineResponse2018.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **trackingfield_delete**
> trackingfield_delete(field_id)

Delete a Tracking Field

[Tracking fields](https://support.zoom.us/hc/en-us/articles/115000293426-Scheduling-Tracking-Fields) allow you to analyze usage by various fields within an organization.<br> Use this API to delete a tracking field.<br><br> **Scope:** `trackingfield:write:admin`<br>  <br> **Prerequisites:** * Business, Education, API or higher plan

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TrackingFieldApi.new

field_id = 'field_id_example' # String | The Tracking Field ID


begin
  #Delete a Tracking Field
  api_instance.trackingfield_delete(field_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling TrackingFieldApi->trackingfield_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field_id** | **String**| The Tracking Field ID | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **trackingfield_get**
> InlineResponse2018 trackingfield_get(field_id)

Get a Tracking Field

[Tracking fields](https://support.zoom.us/hc/en-us/articles/115000293426-Scheduling-Tracking-Fields) allow you to analyze usage by various fields within an organization.<br><br> When scheduling a meeting, the tracking field will be included in the meeting options.<br>Use this API to get information on a tracking field.<br><br> **Scopes:** `trackingfield:read:admin`<br>  <br> **Prerequisites:** * Business, Education, API or higher plan 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TrackingFieldApi.new

field_id = 'field_id_example' # String | The Tracking Field ID


begin
  #Get a Tracking Field
  result = api_instance.trackingfield_get(field_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling TrackingFieldApi->trackingfield_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field_id** | **String**| The Tracking Field ID | 

### Return type

[**InlineResponse2018**](InlineResponse2018.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **trackingfield_list**
> Object trackingfield_list

List Tracking Fields

[Tracking fields](https://support.zoom.us/hc/en-us/articles/115000293426-Scheduling-Tracking-Fields) allow you to analyze usage by various fields within an organization.<br> Use this API to list all the tracking fields on your Zoom account.<br><br> **Scopes:** `trackingfield:read:admin`<br>  <br> **Prerequisites:** * Business, Education, API or higher plan

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TrackingFieldApi.new

begin
  #List Tracking Fields
  result = api_instance.trackingfield_list
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling TrackingFieldApi->trackingfield_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **trackingfield_update**
> trackingfield_update(field_id, body)

Update a Tracking Field

[Tracking fields](https://support.zoom.us/hc/en-us/articles/115000293426-Scheduling-Tracking-Fields) allow you to analyze usage by various fields within an organization.<br> Use this API to update a tracking field.<br><br> **Scope:** `trackingfield:write:admin`<br>  <br> **Prerequisites:** * Business, Education, API or higher plan

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::TrackingFieldApi.new

field_id = 'field_id_example' # String | The Tracking Field ID

body = ZoomUs::TrackingField1.new # TrackingField1 | 


begin
  #Update a Tracking Field
  api_instance.trackingfield_update(field_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling TrackingFieldApi->trackingfield_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field_id** | **String**| The Tracking Field ID | 
 **body** | [**TrackingField1**](TrackingField1.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



