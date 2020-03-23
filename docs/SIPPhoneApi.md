# ZoomUs::SIPPhone

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sip_phone**](SIPPhone.md#create_sip_phone) | **POST** /sip_phones | Create SIP Phone
[**delete_sip_phone**](SIPPhone.md#delete_sip_phone) | **DELETE** /sip_phones/{phoneId} | Delete SIP Phone
[**list_sip_phones**](SIPPhone.md#list_sip_phones) | **GET** /sip_phones | List SIP Phones
[**update_sip_phone**](SIPPhone.md#update_sip_phone) | **PATCH** /sip_phones/{phoneId} | Update SIP Phone


# **create_sip_phone**
> create_sip_phone(opts)

Create SIP Phone

Zoom’s Phone System Integration (PSI), also referred as SIP phones, enables an organization to leverage the Zoom client to complete a softphone registration to supported premise based PBX system. End users will have the ability to have softphone functionality within a single client while maintaining a comparable interface to Zoom Phone. Use this API to enable a user to use SIP phone.<br><br> **Prerequisites**: * Currently only supported on Cisco and Avaya PBX systems.  * The account owner or account admin must first enable SIP Phone Integration by contacting the [Sales](https://zoom.us/contactsales) team.<br> **Scope:** `sip_phone:write:admin` <br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::SIPPhone.new

opts = { 
  body: ZoomUs::Body.new # Body | 
}

begin
  #Create SIP Phone
  api_instance.create_sip_phone(opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling SIPPhone->create_sip_phone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_sip_phone**
> delete_sip_phone(phone_id)

Delete SIP Phone

Zoom’s Phone System Integration (PSI), also referred as SIP phones, enables an organization to leverage the Zoom client to complete a softphone registration to supported premise based PBX system. End users will have the ability to have softphone functionality within a single client while maintaining a comparable interface to Zoom Phone. Use this API to delete a specific SIP phone on a Zoom account.<br><br> **Prerequisites**: * Currently only supported on Cisco and Avaya PBX systems.  * User must enable SIP Phone Integration by contacting the [Sales](https://zoom.us/contactsales) team.<br> **Scope:** `sip_phone:read:admin` <br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::SIPPhone.new

phone_id = 'phone_id_example' # String | Unique Identifier of the SIP Phone. It can be retrieved from the List SIP Phones API.


begin
  #Delete SIP Phone
  api_instance.delete_sip_phone(phone_id)
rescue ZoomUs::ApiError => e
  puts "Exception when calling SIPPhone->delete_sip_phone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_id** | **String**| Unique Identifier of the SIP Phone. It can be retrieved from the List SIP Phones API. | 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_sip_phones**
> InlineResponse2001 list_sip_phones(opts)

List SIP Phones

Zoom’s Phone System Integration (PSI), also referred as SIP phones, enables an organization to leverage the Zoom client to complete a softphone registration to supported premise based PBX system. End users will have the ability to have softphone functionality within a single client while maintaining a comparable interface to Zoom Phone. Use this API to list SIP phones on an account.<br><br> **Prerequisites**: * Currently only supported on Cisco and Avaya PBX systems.  * User must enable SIP Phone Integration by contacting the [Sales](https://zoom.us/contactsales) team.<br> **Scope:** `sip_phone:read:admin`<br> <br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::SIPPhone.new

opts = { 
  page_number: 1, # Integer | The current page number of returned records.
  search_key: 'search_key_example', # String | User name or email address of a user. If this parameter is provided, only the SIP phone system integration enabled for that specific user will be returned. Otherwise, all SIP phones on an account will be returned.
  page_size: 56 # Integer | The number of records returned within a single API call.
}

begin
  #List SIP Phones
  result = api_instance.list_sip_phones(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling SIPPhone->list_sip_phones: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_number** | **Integer**| The current page number of returned records. | [optional] [default to 1]
 **search_key** | **String**| User name or email address of a user. If this parameter is provided, only the SIP phone system integration enabled for that specific user will be returned. Otherwise, all SIP phones on an account will be returned. | [optional] 
 **page_size** | **Integer**| The number of records returned within a single API call. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_sip_phone**
> update_sip_phone(phone_id, opts)

Update SIP Phone

Zoom’s Phone System Integration (PSI), also referred as SIP phones, enables an organization to leverage the Zoom client to complete a softphone registration to supported premise based PBX system. End users will have the ability to have softphone functionality within a single client while maintaining a comparable interface to Zoom Phone. Use this API to update information of a specific SIP Phone on a Zoom account.<br><br> **Prerequisites**: * Currently only supported on Cisco and Avaya PBX systems.  * The account owner or account admin must first enable SIP Phone Integration by contacting the [Sales](https://zoom.us/contactsales) team.<br> **Scope:** `sip_phone:write:admin` <br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::SIPPhone.new

phone_id = 'phone_id_example' # String | Unique Identifier of the SIP Phone. This can be retrieved from the List SIP Phones API.

opts = { 
  body: ZoomUs::Body1.new # Body1 | 
}

begin
  #Update SIP Phone
  api_instance.update_sip_phone(phone_id, opts)
rescue ZoomUs::ApiError => e
  puts "Exception when calling SIPPhone->update_sip_phone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_id** | **String**| Unique Identifier of the SIP Phone. This can be retrieved from the List SIP Phones API. | 
 **body** | [**Body1**](Body1.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



