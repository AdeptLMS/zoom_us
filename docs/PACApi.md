# ZoomUs::PACApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_pa_cs**](PACApi.md#user_pa_cs) | **GET** /users/{userId}/pac | List a User&#39;s PAC Accounts


# **user_pa_cs**
> InlineResponse20049 user_pa_cs(user_id)

List a User's PAC Accounts

[Personal Audio Conference](https://support.zoom.us/hc/en-us/articles/204517069-Getting-Started-with-Personal-Audio-Conference) (PAC) allows Pro or higher account holders to host meetings through PSTN (phone dial-in) only.<br>Use this API to list a user's PAC accounts.<br><br> **Scopes:** `user:read:admin` `user:read`<br> <br>  <br> **Prerequisites:**<br> * A Pro or higher plan with [Premium Audio Conferencing](https://support.zoom.us/hc/en-us/articles/204517069-Getting-Started-with-Personal-Audio-Conference) add-on. * Personal Audio Conference must be enabled in the user's profile.

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PACApi.new

user_id = 'user_id_example' # String | The user ID or email address of the user. For user-level apps, pass `me` as the value for userId.


begin
  #List a User's PAC Accounts
  result = api_instance.user_pa_cs(user_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PACApi->user_pa_cs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId. | 

### Return type

[**InlineResponse20049**](InlineResponse20049.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



