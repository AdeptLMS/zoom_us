# ZoomUs::PhoneAutoReceptionistsApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign_phone_numbers_auto_receptionist**](PhoneAutoReceptionistsApi.md#assign_phone_numbers_auto_receptionist) | **POST** /phone/auto_receptionists/{autoReceptionistId}/phone_numbers | Assign Phone Numbers
[**unassign_a_phone_num_auto_receptionist**](PhoneAutoReceptionistsApi.md#unassign_a_phone_num_auto_receptionist) | **DELETE** /phone/auto_receptionists/{autoReceptionistId}/phone_numbers/{phoneNumberId} | Unassign a Phone Number
[**unassign_all_phone_nums_auto_receptionist**](PhoneAutoReceptionistsApi.md#unassign_all_phone_nums_auto_receptionist) | **DELETE** /phone/auto_receptionists/{autoReceptionistId}/phone_numbers | Unassign all Phone Numbers
[**update_auto_receptionist**](PhoneAutoReceptionistsApi.md#update_auto_receptionist) | **PATCH** /phone/auto_receptionists/{autoReceptionistId} | Update Auto Receptionist Details 


# **assign_phone_numbers_auto_receptionist**
> Object assign_phone_numbers_auto_receptionist(auto_receptionist_id, opts)

Assign Phone Numbers

Assign available phone numbers to an [auto receptionist](https://support.zoom.us/hc/en-us/articles/360021121312-Managing-Auto-Receptionists-and-Interactive-Voice-Response-IVR-). The available numbers can be retrieved using the List Phone Numbers API with `type` query parameter set to \"unassigned\".  **Prerequisites:** * Pro or higher account plan with Zoom Phone License * Account owner or admin permissions<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneAutoReceptionistsApi.new

auto_receptionist_id = 'auto_receptionist_id_example' # String | Unique Identifier of the Auto Receptionist. It can be retrieved from the [List Sites API](https://marketplace.zoom.us/docs/api-reference/zoom-api/phone-site/listphonesites).

opts = { 
  body: ZoomUs::Body73.new # Body73 | 
}

begin
  #Assign Phone Numbers
  result = api_instance.assign_phone_numbers_auto_receptionist(auto_receptionist_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneAutoReceptionistsApi->assign_phone_numbers_auto_receptionist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auto_receptionist_id** | **String**| Unique Identifier of the Auto Receptionist. It can be retrieved from the [List Sites API](https://marketplace.zoom.us/docs/api-reference/zoom-api/phone-site/listphonesites). | 
 **body** | [**Body73**](Body73.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **unassign_a_phone_num_auto_receptionist**
> Object unassign_a_phone_num_auto_receptionist(auto_receptionist_id, phone_number_id)

Unassign a Phone Number

Unassign a specific phone number that was previously assigned to an [auto receptionist](https://support.zoom.us/hc/en-us/articles/360021121312-Managing-Auto-Receptionists-and-Interactive-Voice-Response-IVR-).   **Prerequisites:** * Pro or higher account plan with Zoom Phone License * Account owner or admin permissions<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneAutoReceptionistsApi.new

auto_receptionist_id = 'auto_receptionist_id_example' # String | Unique identifier of the auto receptionist. This can be retrieved from the List Phone Sites API.

phone_number_id = 'phone_number_id_example' # String | Unique Identifier of the phone number or provide the actual phone number in e164 format (example: +19995550123).


begin
  #Unassign a Phone Number
  result = api_instance.unassign_a_phone_num_auto_receptionist(auto_receptionist_id, phone_number_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneAutoReceptionistsApi->unassign_a_phone_num_auto_receptionist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auto_receptionist_id** | **String**| Unique identifier of the auto receptionist. This can be retrieved from the List Phone Sites API. | 
 **phone_number_id** | **String**| Unique Identifier of the phone number or provide the actual phone number in e164 format (example: +19995550123). | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **unassign_all_phone_nums_auto_receptionist**
> Object unassign_all_phone_nums_auto_receptionist(auto_receptionist_id)

Unassign all Phone Numbers

Unassign all phone numbers that were previously assigned to an [auto receptionist](https://support.zoom.us/hc/en-us/articles/360021121312-Managing-Auto-Receptionists-and-Interactive-Voice-Response-IVR-).   **Prerequisites:** * Pro or higher account plan with Zoom Phone License * Account owner or admin permissions<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneAutoReceptionistsApi.new

auto_receptionist_id = 'auto_receptionist_id_example' # String | 


begin
  #Unassign all Phone Numbers
  result = api_instance.unassign_all_phone_nums_auto_receptionist(auto_receptionist_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneAutoReceptionistsApi->unassign_all_phone_nums_auto_receptionist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auto_receptionist_id** | **String**|  | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_auto_receptionist**
> Object update_auto_receptionist(auto_receptionist_id, opts)

Update Auto Receptionist Details 

An auto receptionist answers calls with a personalized recording and routes calls to a phone user, call queue, common area phone, or voicemail. An auto receptionist can also be set up so that it routes calls to an interactive voice response (IVR) system to allow callers to select the routing options.<br> Use this API to [change information](https://support.zoom.us/hc/en-us/articles/360021121312-Managing-Auto-Receptionists-and-Interactive-Voice-Response-IVR-#h_1d5ffc56-6ba3-4ce5-9d86-4a1a1ee743f3) such as display name and extension number assigned to the main auto receptionist.<br><br> **Prerequisites:**<br> * Pro or higher account with Zoom Phone license.<br> **Scopes:** `phone:write:admin` <br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneAutoReceptionistsApi.new

auto_receptionist_id = 'auto_receptionist_id_example' # String | Unique Identifier of the Auto Receptionist. It can be retrieved from the [List Sites API](https://marketplace.zoom.us/docs/api-reference/zoom-api/phone-site/listphonesites).

opts = { 
  body: ZoomUs::Body72.new # Body72 | 
}

begin
  #Update Auto Receptionist Details 
  result = api_instance.update_auto_receptionist(auto_receptionist_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneAutoReceptionistsApi->update_auto_receptionist: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auto_receptionist_id** | **String**| Unique Identifier of the Auto Receptionist. It can be retrieved from the [List Sites API](https://marketplace.zoom.us/docs/api-reference/zoom-api/phone-site/listphonesites). | 
 **body** | [**Body72**](Body72.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



