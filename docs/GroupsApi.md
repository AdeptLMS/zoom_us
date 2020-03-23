# ZoomUs::GroupsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_group_lock_settings**](GroupsApi.md#get_group_lock_settings) | **GET** /groups/{groupId}/lock_settings | Get Locked Settings
[**get_group_settings**](GroupsApi.md#get_group_settings) | **GET** /groups/{groupId}/settings | Get a Group&#39;s Settings
[**group**](GroupsApi.md#group) | **GET** /groups/{groupId} | Get a Group
[**group_create**](GroupsApi.md#group_create) | **POST** /groups | Create a Group
[**group_delete**](GroupsApi.md#group_delete) | **DELETE** /groups/{groupId} | Delete a Group
[**group_locked_settings**](GroupsApi.md#group_locked_settings) | **PATCH** /groups/{groupId}/lock_settings | Update Locked Settings
[**group_members**](GroupsApi.md#group_members) | **GET** /groups/{groupId}/members | List Group Members 
[**group_members_create**](GroupsApi.md#group_members_create) | **POST** /groups/{groupId}/members | Add Group Members
[**group_members_delete**](GroupsApi.md#group_members_delete) | **DELETE** /groups/{groupId}/members/{memberId} | Delete a Group Member
[**group_update**](GroupsApi.md#group_update) | **PATCH** /groups/{groupId} | Update a Group
[**groups**](GroupsApi.md#groups) | **GET** /groups | List Groups
[**update_a_group_member**](GroupsApi.md#update_a_group_member) | **PATCH** /groups/{groupId}/members/{memberId} | Update a Group Member
[**update_group_settings**](GroupsApi.md#update_group_settings) | **PATCH** /groups/{groupId}/settings | Update a Group&#39;s Settings


# **get_group_lock_settings**
> InlineResponse20069 get_group_lock_settings(group_id)

Get Locked Settings

Retrieve a [group's](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) locked settings. If you lock a setting, the group members will not be able to modify it individually. <p style=\"background-color:#FEEFB3; color:#9F6000\"><br>Note:</b> The `force_pmi_jbh_password` field under meeting settings is planned to be deprecated on September 22, 2019. This field will be replaced by another field that will provide the same functionality.</p>  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | Id of the group.


begin
  #Get Locked Settings
  result = api_instance.get_group_lock_settings(group_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->get_group_lock_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Id of the group. | 

### Return type

[**InlineResponse20069**](InlineResponse20069.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_group_settings**
> Object get_group_settings(group_id, opts)

Get a Group's Settings

Get settings for a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-).  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | 

opts = { 
  option: 'option_example' # String | `meeting_authentication`: Use this query parameter to view [meeting authentication configuration](https://support.zoom.us/hc/en-us/articles/360037117472-Authentication-Profiles-for-Meetings-and-Webinars) applied on the account.<br>`recording_authentication`: Use this query parameter to view [recording authentication configuration](https://support.zoom.us/hc/en-us/articles/360037756671-Authentication-Profiles-for-Cloud-Recordings) applied on the account.
}

begin
  #Get a Group's Settings
  result = api_instance.get_group_settings(group_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->get_group_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**|  | 
 **option** | **String**| &#x60;meeting_authentication&#x60;: Use this query parameter to view [meeting authentication configuration](https://support.zoom.us/hc/en-us/articles/360037117472-Authentication-Profiles-for-Meetings-and-Webinars) applied on the account.&lt;br&gt;&#x60;recording_authentication&#x60;: Use this query parameter to view [recording authentication configuration](https://support.zoom.us/hc/en-us/articles/360037756671-Authentication-Profiles-for-Cloud-Recordings) applied on the account. | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **group**
> InlineResponse20017 group(group_id)

Get a Group

Get a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under an account.  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).


begin
  #Get a Group
  result = api_instance.group(group_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **group_create**
> group_create(body)

Create a Group

Create a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under an account.  **Prerequisite**: Pro or higher account.<br> **Scopes**: `group:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

body = ZoomUs::Body15.new # Body15 | 


begin
  #Create a Group
  api_instance.group_create(body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->group_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body15**](Body15.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **group_delete**
> group_delete(group_id)

Delete a Group

Delete a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-).  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).


begin
  #Delete a Group
  api_instance.group_delete(group_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->group_delete: #{e}"
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



# **group_locked_settings**
> Object group_locked_settings(group_id, opts)

Update Locked Settings

Update a [group's](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) locked settings. If you lock a setting, the group members will not be able to modify it individually. <p style=\"background-color:#FEEFB3; color:#9F6000\"><br>Note:</b> The `force_pmi_jbh_password` field under meeting settings is planned to be deprecated on September 22, 2019. This field will be replaced by another field that will provide the same functionality.</p>  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | The Id of the group.

opts = { 
  body: ZoomUs::Body50.new # Body50 | 
}

begin
  #Update Locked Settings
  result = api_instance.group_locked_settings(group_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->group_locked_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The Id of the group. | 
 **body** | [**Body50**](Body50.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **group_members**
> InlineResponse20018 group_members(group_id, opts)

List Group Members 

List the members of a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  page_number: 1 # Integer | The current page number of returned records.
}

begin
  #List Group Members 
  result = api_instance.group_members(group_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->group_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **group_members_create**
> group_members_create(group_id, body)

Add Group Members

Add members to a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).

body = ZoomUs::Body17.new # Body17 | 


begin
  #Add Group Members
  api_instance.group_members_create(group_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->group_members_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 
 **body** | [**Body17**](Body17.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **group_members_delete**
> group_members_delete(group_id, member_id)

Delete a Group Member

Delete a member from a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) in a Zoom account.  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).

member_id = 'member_id_example' # String | The member ID.


begin
  #Delete a Group Member
  api_instance.group_members_delete(group_id, member_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->group_members_delete: #{e}"
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



# **group_update**
> group_update(group_id, body)

Update a Group

Update a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under your account.  **Prerequisite**: Pro, Business, or Education account<br> **Scopes**: `group:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | The group ID.<br> Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).

body = ZoomUs::Body16.new # Body16 | 


begin
  #Update a Group
  api_instance.group_update(group_id, body)
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->group_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups). | 
 **body** | [**Body16**](Body16.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **groups**
> InlineResponse20016 groups

List Groups

List [groups](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-) under an account.  **Prerequisite**: Pro or higher account.<br> **Scopes**: `group:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

begin
  #List Groups
  result = api_instance.groups
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->groups: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_a_group_member**
> Object update_a_group_member(group_id, member_id, opts)

Update a Group Member

If a user is a member in multiple groups, you can [set a primary group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-#h_d07c7dcd-4fd8-485a-b5fe-a322e8d21c09) for the user. The group member will use the primary group's settings by default. However, if settings are locked in other groups, those settings will continue to be locked for that user. By default, the primary group is the first group that user is added to.<br><br> Use this API to perform either of the following tasks: * Simultaneously remove a member from one group and move the member to a different group. * Set a primary group for the user<br><br> **Prerequisites:**  * Pro or higher account<br> **Scopes:** `group:write:admin` 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | Unique Identifier of the group. Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups) API.<br> To change a member's primary group, provide the groupId of the member's current primary group as the value of this field.<br> To remove a member from one group and move the member to another group, provide the groupId of the group from which the member is to be moved.

member_id = 'member_id_example' # String | Unique Identifier of the group member. Can be retrieved by calling the [List Group Members](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groupmembers) API.

opts = { 
  body: ZoomUs::Body18.new # Body18 | 
}

begin
  #Update a Group Member
  result = api_instance.update_a_group_member(group_id, member_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->update_a_group_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Unique Identifier of the group. Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups) API.&lt;br&gt; To change a member&#39;s primary group, provide the groupId of the member&#39;s current primary group as the value of this field.&lt;br&gt; To remove a member from one group and move the member to another group, provide the groupId of the group from which the member is to be moved. | 
 **member_id** | **String**| Unique Identifier of the group member. Can be retrieved by calling the [List Group Members](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groupmembers) API. | 
 **body** | [**Body18**](Body18.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_group_settings**
> update_group_settings(group_id, opts)

Update a Group's Settings

Update settings for a [group](https://support.zoom.us/hc/en-us/articles/204519819-Group-Management-).<p style=\"background-color:#FEEFB3; color:#9F6000\"><br>Note:</b> The `force_pmi_jbh_password` field under meeting settings is planned to be deprecated on September 22, 2019. This field will be replaced by another field that will provide the same functionality.</p> **Prerequisite**: Pro, Business, or Education account<br>  **Scopes**: `group:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::GroupsApi.new

group_id = 'group_id_example' # String | Id of the group.

opts = { 
  body: nil, # Object | 
  option: 'option_example' # String | 
}

begin
  #Update a Group's Settings
  api_instance.update_group_settings(group_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling GroupsApi->update_group_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| Id of the group. | 
 **body** | **Object**|  | [optional] 
 **option** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



