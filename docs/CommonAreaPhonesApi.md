# ZoomUs::CommonAreaPhonesApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_common_area_phone**](CommonAreaPhonesApi.md#add_common_area_phone) | **POST** /phone/common_area_phones | Add a Common Area Phone
[**delete_common_area_phone**](CommonAreaPhonesApi.md#delete_common_area_phone) | **DELETE** /phone/common_area_phone/{commonAreaPhoneId} | Delete a Common Area Phone
[**get_a_common_area_phone**](CommonAreaPhonesApi.md#get_a_common_area_phone) | **GET** /phone/common_area_phone/{commonAreaPhoneId} | Get Common Area Phone Details
[**list_common_area_phones**](CommonAreaPhonesApi.md#list_common_area_phones) | **GET** /phone/common_area_phones | List Common Area Phones
[**update_common_area_phone**](CommonAreaPhonesApi.md#update_common_area_phone) | **PATCH** /phone/common_area_phone/{commonAreaPhoneId} | Update Common Area Phone


# **add_common_area_phone**
> InlineResponse20124 add_common_area_phone(opts)

Add a Common Area Phone

A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to [add a common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones#h_2d0da347-c35a-4993-9771-e21aaa568deb).<br><br> **Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scope:** `phone:write:admin`<br>     

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CommonAreaPhonesApi.new

opts = { 
  body: ZoomUs::Body74.new # Body74 | 
}

begin
  #Add a Common Area Phone
  result = api_instance.add_common_area_phone(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CommonAreaPhonesApi->add_common_area_phone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body74**](Body74.md)|  | [optional] 

### Return type

[**InlineResponse20124**](InlineResponse20124.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml



# **delete_common_area_phone**
> Object delete_common_area_phone(common_area_phone_id)

Delete a Common Area Phone

A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to remove the [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) from Zoom Phone System in an account.<br><br>**Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CommonAreaPhonesApi.new

common_area_phone_id = 'common_area_phone_id_example' # String | Unique Identifier of the common area phone.


begin
  #Delete a Common Area Phone
  result = api_instance.delete_common_area_phone(common_area_phone_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CommonAreaPhonesApi->delete_common_area_phone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **common_area_phone_id** | **String**| Unique Identifier of the common area phone. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_a_common_area_phone**
> InlineResponse20096 get_a_common_area_phone(common_area_phone_id)

Get Common Area Phone Details

A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to get details on a specific [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.<br><br>**Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scopes:** `phone:read:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CommonAreaPhonesApi.new

common_area_phone_id = 'common_area_phone_id_example' # String | Unique Identifier of the Common Area Phone. This can be retrieved from List Common Area Phones API.


begin
  #Get Common Area Phone Details
  result = api_instance.get_a_common_area_phone(common_area_phone_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CommonAreaPhonesApi->get_a_common_area_phone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **common_area_phone_id** | **String**| Unique Identifier of the Common Area Phone. This can be retrieved from List Common Area Phones API. | 

### Return type

[**InlineResponse20096**](InlineResponse20096.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_common_area_phones**
> InlineResponse20095 list_common_area_phones(opts)

List Common Area Phones

A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to [list all common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.<br><br>**Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br><br> **Scope:** `phone:read:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CommonAreaPhonesApi.new

opts = { 
  page_size: 30, # Integer | The total number of records returned from a single API call.
  next_page_token: 'next_page_token_example' # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
}

begin
  #List Common Area Phones
  result = api_instance.list_common_area_phones(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CommonAreaPhonesApi->list_common_area_phones: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **Integer**| The total number of records returned from a single API call. | [optional] [default to 30]
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 

### Return type

[**InlineResponse20095**](InlineResponse20095.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_common_area_phone**
> Object update_common_area_phone(common_area_phone_id, opts)

Update Common Area Phone

A common area phone can be provisioned by a Zoom account owner or a Zoom admin so that anyone in an organization can use it. For example, if your office has shared desks that don't belong to a specific employees, you could add a common area phone so that any person can use it.<br> Use this API to update details on a specific [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) in an account.<br><br>**Prerequisites:**<br> * Pro or a higher account with Zoom Phone license. * Account owner or admin permissions. * [Supported device](https://support.zoom.us/hc/en-us/articles/360001299063-Zoom-Voice-Supported-Devices)<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::CommonAreaPhonesApi.new

common_area_phone_id = 'common_area_phone_id_example' # String | 

opts = { 
  body: ZoomUs::Body75.new # Body75 | 
}

begin
  #Update Common Area Phone
  result = api_instance.update_common_area_phone(common_area_phone_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling CommonAreaPhonesApi->update_common_area_phone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **common_area_phone_id** | **String**|  | 
 **body** | [**Body75**](Body75.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



