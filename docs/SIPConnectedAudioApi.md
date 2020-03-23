# ZoomUs::SIPConnectedAudioApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign_sip_config**](SIPConnectedAudioApi.md#assign_sip_config) | **PATCH** /accounts/{accountId}/sip_trunk/settings | Assign SIP Trunk Configuration
[**assign_sip_trunk_numbers**](SIPConnectedAudioApi.md#assign_sip_trunk_numbers) | **POST** /accounts/{accountId}/sip_trunk/numbers | Assign Numbers
[**delete_all_sip_numbers**](SIPConnectedAudioApi.md#delete_all_sip_numbers) | **DELETE** /accounts/{accountId}/sip_trunk/numbers | Delete All Numbers
[**list_sip_trunk_numbers**](SIPConnectedAudioApi.md#list_sip_trunk_numbers) | **GET** /sip_trunk/numbers | List SIP Trunk Numbers


# **assign_sip_config**
> Object assign_sip_config(account_id, opts)

Assign SIP Trunk Configuration

With SIP-connected audio, Zoom establishes a SIP trunk (a network connection specifically designed to make and deliver phone calls) over a direct and private connection between the customer’s network and the Zoom cloud. Meeting participants that dial into a meeting or have the meeting call them, and are On-Net from the perspective of the customers' IP telephony network, will be connected over this trunk rather than over the PSTN. <br><br> Using this API, a Master Account owner can copy the SIP Connected Audio configurations applied on the Master Account and enable those configurations on a Sub Account. The owner can also disable the configuration in the Sub Account where it was previously enabled.  **Prerequisites:**<br> * Pro or a higher account with SIP Connected Audio plan enabled. * Master Account Owner<br> **Scopes:** `sip_trunk:master`<br>  

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::SIPConnectedAudioApi.new

account_id = 'account_id_example' # String | 

opts = { 
  body: ZoomUs::Body60.new # Body60 | 
}

begin
  #Assign SIP Trunk Configuration
  result = api_instance.assign_sip_config(account_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling SIPConnectedAudioApi->assign_sip_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**Body60**](Body60.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **assign_sip_trunk_numbers**
> Object assign_sip_trunk_numbers(account_id, opts)

Assign Numbers

With SIP-connected audio, Zoom establishes a SIP trunk (a network connection specifically designed to make and deliver phone calls) over a direct and private connection between the customer’s network and the Zoom cloud. Meeting participants that dial into a meeting or have the meeting call them, and are On-Net from the perspective of the customers' IP telephony network, will be connected over this trunk rather than over the PSTN. <br><br>Use this API to assign internal numbers to a Sub Account.  **Prerequisites:**<br> * Pro or a higher account with SIP Connected Audio plan enabled. * The account must be a Master Account<br> **Scopes:** `sip_trunk:master`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::SIPConnectedAudioApi.new

account_id = 'account_id_example' # String | Unique Identifier of the Sub Account.

opts = { 
  body: ZoomUs::Body61.new # Body61 | 
}

begin
  #Assign Numbers
  result = api_instance.assign_sip_trunk_numbers(account_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling SIPConnectedAudioApi->assign_sip_trunk_numbers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Unique Identifier of the Sub Account. | 
 **body** | [**Body61**](Body61.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_all_sip_numbers**
> Object delete_all_sip_numbers(account_id)

Delete All Numbers

With SIP-connected audio, Zoom establishes a SIP trunk (a network connection specifically designed to make and deliver phone calls) over a direct and private connection between the customer’s network and the Zoom cloud. Meeting participants that dial into a meeting or have the meeting call them, and are On-Net from the perspective of the customers' IP telephony network, will be connected over this trunk rather than over the PSTN. <br><br>Use this API to delete all internal numbers assigned to a Sub Account. **Prerequisites:**<br>  * Pro or a higher account with SIP Connected Audio plan enabled. * The account must be a Master Account<br> **Scopes:** `sip_trunk:master`<br> 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::SIPConnectedAudioApi.new

account_id = 'account_id_example' # String | Account ID of the Sub Account from which the numbers are to be deleted. This can be retrieved from [List Sub Accounts](https://marketplace.zoom.us/docs/api-reference/zoom-api/accounts/account) API.


begin
  #Delete All Numbers
  result = api_instance.delete_all_sip_numbers(account_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling SIPConnectedAudioApi->delete_all_sip_numbers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID of the Sub Account from which the numbers are to be deleted. This can be retrieved from [List Sub Accounts](https://marketplace.zoom.us/docs/api-reference/zoom-api/accounts/account) API. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_sip_trunk_numbers**
> InlineResponse20082 list_sip_trunk_numbers

List SIP Trunk Numbers

With SIP-connected audio, Zoom establishes a SIP trunk (a network connection specifically designed to make and deliver phone calls) over a direct and private connection between the customer’s network and the Zoom cloud. Meeting participants that dial into a meeting or have the meeting call them, and are On-Net from the perspective of the customers' IP telephony network, will be connected over this trunk rather than over the PSTN. <br><br>Use this API to list all the internal numbers that are configured for SIP Connected Audio in a Zoom Account.  **Prerequisites:**<br> * Pro or a higher account with SIP Connected Audio plan enabled. * The account must be a Master Account<br> **Scopes:** `sip_trunk:master` 

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::SIPConnectedAudioApi.new

begin
  #List SIP Trunk Numbers
  result = api_instance.list_sip_trunk_numbers
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling SIPConnectedAudioApi->list_sip_trunk_numbers: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20082**](InlineResponse20082.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



