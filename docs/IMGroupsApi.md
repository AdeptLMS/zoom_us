# ZoomUs::IMGroupsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**im_group**](IMGroupsApi.md#im_group) | **GET** /im/groups/{groupId} | Retrieve an IM Directory Group
[**im_group_create**](IMGroupsApi.md#im_group_create) | **POST** /im/groups | Create an IM Directory Group
[**im_group_delete**](IMGroupsApi.md#im_group_delete) | **DELETE** /im/groups/{groupId} | Delete an IM Directory Group
[**im_group_members**](IMGroupsApi.md#im_group_members) | **GET** /im/groups/{groupId}/members | List IM Directory Group Members
[**im_group_members_create**](IMGroupsApi.md#im_group_members_create) | **POST** /im/groups/{groupId}/members | Add IM Directory Group Members
[**im_group_members_delete**](IMGroupsApi.md#im_group_members_delete) | **DELETE** /im/groups/{groupId}/members/{memberId} | Delete an IM Directory Group Member
[**im_group_update**](IMGroupsApi.md#im_group_update) | **PATCH** /im/groups/{groupId} | Update an IM Directory Group
[**im_groups**](IMGroupsApi.md#im_groups) | **GET** /im/groups | List IM Directory Groups


# **im_group**
> InlineResponse20019 im_group(group_id)

Retrieve an IM Directory Group

Retrieve an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.<br><br> Scopes: `imgroup:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMGroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).


begin
  #Retrieve an IM Directory Group
  result = api_instance.im_group(group_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMGroupsApi->im_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **im_group_create**
> im_group_create(body)

Create an IM Directory Group

Create an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.<br><br> **Scopes**: `imgroup:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMGroupsApi.new

body = ZoomUs::Body19.new # Body19 | 


begin
  #Create an IM Directory Group
  api_instance.im_group_create(body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMGroupsApi->im_group_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body19**](Body19.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **im_group_delete**
> im_group_delete(group_id)

Delete an IM Directory Group

Delete an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.<br><br> Scopes: `imgroup:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMGroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).


begin
  #Delete an IM Directory Group
  api_instance.im_group_delete(group_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMGroupsApi->im_group_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **im_group_members**
> GroupMemberList im_group_members(group_id, opts)

List IM Directory Group Members

List the members of an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management).<br><br> **Scope:** `imgroup:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMGroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List IM Directory Group Members
  result = api_instance.im_group_members(group_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMGroupsApi->im_group_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**GroupMemberList**](GroupMemberList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **im_group_members_create**
> im_group_members_create(group_id, body)

Add IM Directory Group Members

Add members to an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under an account.<br><br> **Scope:** `imgroup:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMGroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).

body = ZoomUs::Body21.new # Body21 | 


begin
  #Add IM Directory Group Members
  api_instance.im_group_members_create(group_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMGroupsApi->im_group_members_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 
 **body** | [**Body21**](Body21.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **im_group_members_delete**
> im_group_members_delete(group_id, member_id)

Delete an IM Directory Group Member

Delete a member from an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under an account.<br><br> Scopes: `imgroup:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMGroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).

member_id = 'member_id_example' # String | The member ID.


begin
  #Delete an IM Directory Group Member
  api_instance.im_group_members_delete(group_id, member_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMGroupsApi->im_group_members_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 
 **member_id** | **String**| The member ID. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **im_group_update**
> im_group_update(group_id, body)

Update an IM Directory Group

Update an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.<br><br> **Scopes**: `imgroup:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMGroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).

body = ZoomUs::Body20.new # Body20 | 


begin
  #Update an IM Directory Group
  api_instance.im_group_update(group_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMGroupsApi->im_group_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 
 **body** | [**Body20**](Body20.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **im_groups**
> IMGroupList im_groups

List IM Directory Groups

List [IM directory groups](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management).<br><br> **Scopes**: `imgroup:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::IMGroupsApi.new

begin
  #List IM Directory Groups
  result = api_instance.im_groups
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling IMGroupsApi->im_groups: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IMGroupList**](IMGroupList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



