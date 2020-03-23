# ZoomUs::RolesApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_role_members**](RolesApi.md#add_role_members) | **POST** /roles/{roleId}/members | Assign a Role to Members
[**create_role**](RolesApi.md#create_role) | **POST** /roles | Create a Role
[**delete_role**](RolesApi.md#delete_role) | **DELETE** /roles/{roleId} | Delete a Role
[**get_role_information**](RolesApi.md#get_role_information) | **GET** /roles/{roleId} | Get Role Information
[**role_member_delete**](RolesApi.md#role_member_delete) | **DELETE** /roles/{roleId}/members/{memberId} | Unassign a Member&#39;s Role
[**role_members**](RolesApi.md#role_members) | **GET** /roles/{roleId}/members | List Members in a Role
[**roles**](RolesApi.md#roles) | **GET** /roles | List Roles
[**update_role**](RolesApi.md#update_role) | **PATCH** /roles/{roleId} | Update Role Information


# **add_role_members**
> InlineResponse20115 add_role_members(role_id, body)

Assign a Role to Members

User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to [assign a role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control#h_748b6fd8-5057-4cf4-bbfd-787909c09db0) to members.  **Scopes:** `role:write:admin`<br>  <br> **Prerequisites:**<br> * A Pro or a higher plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RolesApi.new

role_id = 'role_id_example' # String | The role ID

body = ZoomUs::Body29.new # Body29 | Role members


begin
  #Assign a Role to Members
  result = api_instance.add_role_members(role_id, body)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RolesApi->add_role_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| The role ID | 
 **body** | [**Body29**](Body29.md)| Role members | 

### Return type

[**InlineResponse20115**](InlineResponse20115.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **create_role**
> Object create_role(opts)

Create a Role

Each Zoom user automatically has a role which can either be owner, administrator, or a member.   **Pre-requisite:**<br> * Pro or higher plan. * For setting the initial role, you must be the Account Owner.<br> * For subsequent role management, you must be the Account Owner or user with role management permissions.<br> **Scopes:** `role:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RolesApi.new

opts = { 
  body: ZoomUs::Body28.new # Body28 | 
}

begin
  #Create a Role
  result = api_instance.create_role(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RolesApi->create_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body28**](Body28.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_role**
> delete_role(role_id)

Delete a Role

Each Zoom user automatically has a role which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list.  Use this API to delete a role.<br> **Pre-requisite:**<br> * A Pro or higher plan.<br> * For role management and updates, you must be the Account Owner or user with role management permissions.  **Scopes:** `role:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RolesApi.new

role_id = 'role_id_example' # String | Role Id.


begin
  #Delete a Role
  api_instance.delete_role(role_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling RolesApi->delete_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| Role Id. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_role_information**
> InlineResponse20071 get_role_information(role_id)

Get Role Information

Each Zoom user automatically has a role which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list of privileges.  Use this API to get information including specific privileges assigned to a [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control).<br> **Pre-requisite:**<br> * A Pro or higher plan.<br> * For role management and updates, you must be the Account Owner or user with role management permissions.  **Scopes:** `role:read:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RolesApi.new

role_id = 'role_id_example' # String | Role Id. 


begin
  #Get Role Information
  result = api_instance.get_role_information(role_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RolesApi->get_role_information: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| Role Id.  | 

### Return type

[**InlineResponse20071**](InlineResponse20071.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **role_member_delete**
> role_member_delete(role_id, member_id)

Unassign a Member's Role

User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to unassign a user's role.  **Scope:** `role:write:admin`<br>  <br> **Prerequisites:**<br> * A Pro or a higher plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RolesApi.new

role_id = 'role_id_example' # String | The role ID

member_id = 'member_id_example' # String | Member's ID


begin
  #Unassign a Member's Role
  api_instance.role_member_delete(role_id, member_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling RolesApi->role_member_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| The role ID | 
 **member_id** | **String**| Member&#39;s ID | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **role_members**
> RoleMembersList role_members(role_id)

List Members in a Role

User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to list all the members that are assigned a specific role.  **Scope:** `role:read:admin`<br>  <br>**Prerequisites:**<br> * A Pro or a higher plan.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RolesApi.new

role_id = 'role_id_example' # String | The role ID


begin
  #List Members in a Role
  result = api_instance.role_members(role_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RolesApi->role_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| The role ID | 

### Return type

[**RoleMembersList**](RoleMembersList.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **roles**
> Object roles

List Roles

List [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) on your account  **Scopes:** `role:read:admin`<br>  <br> **Prerequisites** : *  Pro or higher plan.  *  For setting the initial role, you must be the Account Owner.  *  For subsequent role management, you must be the Account Owner or user with role management permissions.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RolesApi.new

begin
  #List Roles
  result = api_instance.roles
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RolesApi->roles: #{e}"
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



# **update_role**
> Object update_role(role_id, opts)

Update Role Information

Each Zoom user automatically has a [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list.  Use this API to change the privileges, name and description of a specific role.<br> **Pre-requisite:**<br> * A Pro or higher plan.<br> * For role management and updates, you must be the Account Owner or user with role management permissions.<br>**Scopes:** `role:write:admin`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::RolesApi.new

role_id = 'role_id_example' # String | Role Id

opts = { 
  body: ZoomUs::Body52.new # Body52 | 
}

begin
  #Update Role Information
  result = api_instance.update_role(role_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling RolesApi->update_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **String**| Role Id | 
 **body** | [**Body52**](Body52.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



