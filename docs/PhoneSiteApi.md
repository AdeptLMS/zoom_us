# ZoomUs::PhoneSiteApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_phone_site**](PhoneSiteApi.md#create_phone_site) | **POST** /phone/sites | Create a Phone Site
[**delete_phone_site**](PhoneSiteApi.md#delete_phone_site) | **DELETE** /phone/sites/{siteId} | Delete a Phone Site
[**get_a_site**](PhoneSiteApi.md#get_a_site) | **GET** /phone/sites/{siteId} | Get Phone Site Details
[**list_phone_sites**](PhoneSiteApi.md#list_phone_sites) | **GET** /phone/sites | List Phone Sites
[**update_site_details**](PhoneSiteApi.md#update_site_details) | **PATCH** /phone/sites/{siteId} | Update Phone Site Details


# **create_phone_site**
> InlineResponse204 create_phone_site(opts)

Create a Phone Site

Sites allow you to organize Zoom Phone users in your organization. Use this API to create a [Site](https://support.zoom.us/hc/en-us/articles/360020809672).<br> **Prerequisites:**<br> * Multiple Sites must be [enabled](https://support.zoom.us/hc/en-us/articles/360020809672-Managing-Multiple-Sites#h_05c88e35-1593-491f-b1a8-b7139a75dc15). * Pro or a higher account with Zoom Phone enabled. **Scope:** `phone:write:admin`<br>      

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneSiteApi.new

opts = { 
  body: ZoomUs::Body3.new # Body3 | 
}

begin
  #Create a Phone Site
  result = api_instance.create_phone_site(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneSiteApi->create_phone_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body3**](Body3.md)|  | [optional] 

### Return type

[**InlineResponse204**](InlineResponse204.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_phone_site**
> Object delete_phone_site(site_id, transfer_site_id)

Delete a Phone Site

Sites allow you to organize Zoom Phone users in your organization. Use this API to delete a specific [site](https://support.zoom.us/hc/en-us/articles/360020809672) in a Zoom account. To delete a site, in the query parameter, you must provide the Site ID of another site where the assets of current site (users, numbers and phones) can be transferred to.  You cannot use this API to delete the main site.  **Prerequisites:** <br> * Account must have a Pro or a higher plan with Zoom Phone license.  * [Multiple Sites](https://support.zoom.us/hc/en-us/articles/360020809672-Managing-Multiple-Sites) must be enabled.<br> **Scope:** `phone:write:admin` <br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneSiteApi.new

site_id = 'site_id_example' # String | Unique Identifier of the Site.

transfer_site_id = 'transfer_site_id_example' # String | The Site ID of another site where the assets of the current site (users, numbers and phones) can be transferred to.


begin
  #Delete a Phone Site
  result = api_instance.delete_phone_site(site_id, transfer_site_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneSiteApi->delete_phone_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| Unique Identifier of the Site. | 
 **transfer_site_id** | **String**| The Site ID of another site where the assets of the current site (users, numbers and phones) can be transferred to. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_a_site**
> InlineResponse2004 get_a_site(site_id)

Get Phone Site Details

Sites allow you to organize Zoom Phone users in your organization. Use this API to get information about a specific [site](https://support.zoom.us/hc/en-us/articles/360020809672).   **Prerequisites:** <br> * Account must have a Pro or a higher plan with Zoom Phone license. * Multiple Sites must be [enabled](https://support.zoom.us/hc/en-us/articles/360020809672-Managing-Multiple-Sites#h_05c88e35-1593-491f-b1a8-b7139a75dc15).<br> **Scope:** `phone:read:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneSiteApi.new

site_id = 'site_id_example' # String | Unique Identifier of the Site.


begin
  #Get Phone Site Details
  result = api_instance.get_a_site(site_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneSiteApi->get_a_site: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| Unique Identifier of the Site. | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_phone_sites**
> InlineResponse2003 list_phone_sites(opts)

List Phone Sites

Sites allow you to organize Zoom Phone users in your organization. Use this API to list all the [sites](https://support.zoom.us/hc/en-us/articles/360020809672) that have been created for an account.<br> **Prerequisites:**<br> * Multiple Sites must be [enabled](https://support.zoom.us/hc/en-us/articles/360020809672-Managing-Multiple-Sites#h_05c88e35-1593-491f-b1a8-b7139a75dc15). * Pro or a higher account with Zoom Phone enabled.  **Scope:** `phone:read:admin`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneSiteApi.new

opts = { 
  page_size: 30, # Integer | The number of records returned within a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #List Phone Sites
  result = api_instance.list_phone_sites(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneSiteApi->list_phone_sites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_site_details**
> Object update_site_details(site_id, opts)

Update Phone Site Details

Sites allow you to organize Zoom Phone users in your organization. Use this API to update information about a specific [site](https://support.zoom.us/hc/en-us/articles/360020809672).   **Prerequisites:** <br> * Account must have a Pro or a higher plan with Zoom Phone license. * **Scope:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneSiteApi.new

site_id = 'site_id_example' # String | Unique Identifier of the Site.

opts = { 
  body: ZoomUs::Body4.new # Body4 | 
}

begin
  #Update Phone Site Details
  result = api_instance.update_site_details(site_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneSiteApi->update_site_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **String**| Unique Identifier of the Site. | 
 **body** | [**Body4**](Body4.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



