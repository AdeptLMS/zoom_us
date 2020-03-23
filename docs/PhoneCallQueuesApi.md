# ZoomUs::PhoneCallQueuesApi

All URIs are relative to *https://api.zoom.us/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_members_to_call_queue**](PhoneCallQueuesApi.md#add_members_to_call_queue) | **POST** /phone/call_queues/{callQueueId}/members | Add Members to a Call Queue
[**assign_phone_to_call_queue**](PhoneCallQueuesApi.md#assign_phone_to_call_queue) | **POST** /phone/call_queues/{callQueueId}/phone_numbers | Assign Numbers to a Call Queue
[**change_call_queue_manager**](PhoneCallQueuesApi.md#change_call_queue_manager) | **PUT** /phone/call_queues/{callQueueId}/manager | Change Call Queue Manager
[**create_call_queue**](PhoneCallQueuesApi.md#create_call_queue) | **POST** /phone/call_queues | Create a Call Queue
[**delete_a_call_queue**](PhoneCallQueuesApi.md#delete_a_call_queue) | **DELETE** /phone/call_queues/{callQueueId} | Delete a Call Queue
[**get_a_call_queue**](PhoneCallQueuesApi.md#get_a_call_queue) | **GET** /phone/call_queues/{callQueueId} | Get Call Queue Details
[**list_call_queues**](PhoneCallQueuesApi.md#list_call_queues) | **GET** /phone/call_queues | List Call Queues
[**un_assign_phone_num_call_queue**](PhoneCallQueuesApi.md#un_assign_phone_num_call_queue) | **DELETE** /phone/call_queues/{callQueueId}/phone_numbers/{phoneNumberId} | Unassign a Phone Number
[**unassign_a_phone_num_call_queue**](PhoneCallQueuesApi.md#unassign_a_phone_num_call_queue) | **DELETE** /phone/call_queues/{callQueueId}/phone_numbers | Unassign all Phone Numbers
[**unassign_all_members**](PhoneCallQueuesApi.md#unassign_all_members) | **DELETE** /phone/call_queues/{callQueueId}/members | Unassign all Members
[**unassign_member_from_call_queue**](PhoneCallQueuesApi.md#unassign_member_from_call_queue) | **DELETE** /phone/call_queues/{callQueueId}/members/{memberId} | Unassign a Member
[**update_call_queue**](PhoneCallQueuesApi.md#update_call_queue) | **PATCH** /phone/call_queues/{callQueueId} | Update Call Queue Details


# **add_members_to_call_queue**
> Object add_members_to_call_queue(call_queue_id, opts)

Add Members to a Call Queue

Add phone users and/or [common area phones](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones) as members to a specific Call Queue.<br><br> **Prerequisites:**<br> * Pro or higher account plan. * Zoom Phone license<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the Call Queue.

opts = { 
  body: ZoomUs::Body69.new # Body69 | 
}

begin
  #Add Members to a Call Queue
  result = api_instance.add_members_to_call_queue(call_queue_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->add_members_to_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the Call Queue. | 
 **body** | [**Body69**](Body69.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **assign_phone_to_call_queue**
> Object assign_phone_to_call_queue(call_queue_id, opts)

Assign Numbers to a Call Queue

After [buying phone number(s)](https://support.zoom.us/hc/en-us/articles/360020808292#h_007ec8c2-0914-4265-8351-96ab23efa3ad), you can assign it, allowing callers to directly dial a number to reach a [call queue](https://support.zoom.us/hc/en-us/articles/360021524831-Managing-Call-Queues).<br><br> **Prerequisites:**<br> * Pro or higher account plan. * Account owner or admin permissions * Zoom Phone license<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the Call Queue.

opts = { 
  body: ZoomUs::Body68.new # Body68 | 
}

begin
  #Assign Numbers to a Call Queue
  result = api_instance.assign_phone_to_call_queue(call_queue_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->assign_phone_to_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the Call Queue. | 
 **body** | [**Body68**](Body68.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **change_call_queue_manager**
> Object change_call_queue_manager(call_queue_id, opts)

Change Call Queue Manager

A call queue manager has the privileges to maanage the call queue's voicemail inbox and recordings, change all call queue settings and call queue policy settings.<br><br> Use this API to to set another phone user as the [call queue manager](https://support.zoom.us/hc/en-us/articles/360021524831-Managing-Call-Queues#h_db06854b-e6a3-4afe-ba15-baf58f31f90c). **Prerequisites:**<br> * Pro or higher account plan. * Account owner or admin permissions * Zoom Phone license<br> **Scopes:** `phone:write:admin`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the Call Queue.

opts = { 
  body: ZoomUs::Body70.new # Body70 | 
}

begin
  #Change Call Queue Manager
  result = api_instance.change_call_queue_manager(call_queue_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->change_call_queue_manager: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the Call Queue. | 
 **body** | [**Body70**](Body70.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **create_call_queue**
> InlineResponse20123 create_call_queue(opts)

Create a Call Queue

Call queues allow you to route incoming calls to a group of users. For instance, you can use call queues to route calls to various departments in your organization such as sales, engineering, billing, customer service etc.<br> Use this API to [create a call queue](https://support.zoom.us/hc/en-us/articles/360021524831-Managing-Call-Queues#h_e81faeeb-9184-429a-aaea-df49ff5ff413).<br> You can add phone users or common area phones to call queues.  **Prerequisites:**<br> * Pro, Business, or Education account * Account owner or admin permissions * Zoom Phone license<br> **Scopes:** `phone:write:admin`<br>     

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

opts = { 
  body: ZoomUs::Body66.new # Body66 | 
}

begin
  #Create a Call Queue
  result = api_instance.create_call_queue(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->create_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body66**](Body66.md)|  | [optional] 

### Return type

[**InlineResponse20123**](InlineResponse20123.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **delete_a_call_queue**
> Object delete_a_call_queue(call_queue_id)

Delete a Call Queue

Call queues allow you to route incoming calls to a group of users. For instance, you can use call queues to route calls to various departments in your organization such as sales, engineering, billing, customer service etc.<br> Use this API to delete a Call Queue.<br>  **Prerequisites:**<br> * Pro, Business, or Education account * Account owner or admin permissions * Zoom Phone license<br> **Scopes:** `phone:write:admin`<br>     

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the call queue.


begin
  #Delete a Call Queue
  result = api_instance.delete_a_call_queue(call_queue_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->delete_a_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the call queue. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **get_a_call_queue**
> InlineResponse20091 get_a_call_queue(call_queue_id)

Get Call Queue Details

Call queues allow you to route incoming calls to a group of users. For instance, you can use call queues to route calls to various departments in your organization such as sales, engineering, billing, customer service etc.<br> Use this API to get information on a specific Call Queue.<br><br>  **Prerequisites:**<br> * Pro, Business, or Education account * Account owner or admin permissions * Zoom Phone license<br> **Scopes:** `phone:read:admin`<br>      

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the Call Queue. This can be retrieved from [List Call Queues API]().


begin
  #Get Call Queue Details
  result = api_instance.get_a_call_queue(call_queue_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->get_a_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the Call Queue. This can be retrieved from [List Call Queues API](). | 

### Return type

[**InlineResponse20091**](InlineResponse20091.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **list_call_queues**
> InlineResponse20090 list_call_queues(opts)

List Call Queues

Call queues allow you to route incoming calls to a group of users. For instance, you can use call queues to route calls to various departments in your organization such as sales, engineering, billing, customer service etc.<br> Use this API to list Call queues.<br><br> **Prerequisites:**<br> * Pro, Business, or Education account * Account owner or admin permissions * Zoom Phone license<br> **Scopes:** `phone:read:admin`<br>    

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

opts = { 
  next_page_token: 'next_page_token_example', # String | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  page_size: 30 # Integer | The number of records returned from a single API call.
}

begin
  #List Call Queues
  result = api_instance.list_call_queues(opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->list_call_queues: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_page_token** | **String**| The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
 **page_size** | **Integer**| The number of records returned from a single API call. | [optional] [default to 30]

### Return type

[**InlineResponse20090**](InlineResponse20090.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **un_assign_phone_num_call_queue**
> Object un_assign_phone_num_call_queue(call_queue_id, phone_number_id)

Unassign a Phone Number

After assigning a phone number, you can unbind it if you don't want it to be assigned to a [Call Queue](https://support.zoom.us/hc/en-us/articles/360021524831-Managing-Call-Queues). Use this API to unbind a phone number from a Call Queue. After successful unbinding, the number will appear in the [Unassigned tab](https://zoom.us/signin#/numbers/unassigned).<br><br> **Prerequisites:** * Pro or higher account palan * Account owner or admin permissions * Zoom Phone license <br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the Call Queue. This can be retrieved from the List Call Queues API.

phone_number_id = 'phone_number_id_example' # String | Unique Identifier of the Phone Number. 


begin
  #Unassign a Phone Number
  result = api_instance.un_assign_phone_num_call_queue(call_queue_id, phone_number_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->un_assign_phone_num_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the Call Queue. This can be retrieved from the List Call Queues API. | 
 **phone_number_id** | **String**| Unique Identifier of the Phone Number.  | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **unassign_a_phone_num_call_queue**
> Object unassign_a_phone_num_call_queue(call_queue_id)

Unassign all Phone Numbers

Use this API to unbind all phone numbers that are assigned to a [Call Queue](https://support.zoom.us/hc/en-us/articles/360021524831-Managing-Call-Queues) After successful unbinding, the numbers will appear in the [Unassigned tab](https://zoom.us/signin#/numbers/unassigned).<br> If you only need to unassign a specific phone number, use the Unassign a Phone Number API instead. <br> **Prerequisites:** * Pro or higher account palan * Account owner or admin permissions * Zoom Phone license <br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the Call Queue. This can be retrieved from List Call Queues API.


begin
  #Unassign all Phone Numbers
  result = api_instance.unassign_a_phone_num_call_queue(call_queue_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->unassign_a_phone_num_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the Call Queue. This can be retrieved from List Call Queues API. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **unassign_all_members**
> Object unassign_all_members(call_queue_id)

Unassign all Members

Use this API to remove all members from a Call Queue who were previously assigned to that Call Queue. The members could be phone users or [common area phones](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones). **Prerequisites:**<br> * Pro or higher account plan. * Zoom Phone license<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | 


begin
  #Unassign all Members
  result = api_instance.unassign_all_members(call_queue_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->unassign_all_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**|  | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **unassign_member_from_call_queue**
> Object unassign_member_from_call_queue(call_queue_id, member_id)

Unassign a Member

Use this API to remove a member from a Call Queue who was previously added to that Call Queue. The member could be a phone user or a [common area phone](https://support.zoom.us/hc/en-us/articles/360028516231-Managing-Common-Area-Phones). A member who is a Call Queue Manager cannot be unassigned from the Call Queue using this API.  **Prerequisites:**<br> * Pro or higher account plan. * Zoom Phone license<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the Call Queue from which the member needs to be unassigned.

member_id = 'member_id_example' # String | Unique Identifier of the member who needs to be unassigned.


begin
  #Unassign a Member
  result = api_instance.unassign_member_from_call_queue(call_queue_id, member_id)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->unassign_member_from_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the Call Queue from which the member needs to be unassigned. | 
 **member_id** | **String**| Unique Identifier of the member who needs to be unassigned. | 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



# **update_call_queue**
> Object update_call_queue(call_queue_id, opts)

Update Call Queue Details

Call queues allow you to route incoming calls to a group of users. For instance, you can use call queues to route calls to various departments in your organization such as sales, engineering, billing, customer service etc.<br> Use this API to update information of a specific Call Queue.<br>  **Prerequisites:**<br> * Pro, Business, or Education account * Account owner or admin permissions * Zoom Phone license<br> **Scopes:** `phone:write:admin`<br>   

### Example
```ruby
# load the gem
require 'zoom_us'
# setup authorization
ZoomUs.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ZoomUs::PhoneCallQueuesApi.new

call_queue_id = 'call_queue_id_example' # String | Unique Identifier of the Call Queue.

opts = { 
  body: ZoomUs::Body67.new # Body67 | 
}

begin
  #Update Call Queue Details
  result = api_instance.update_call_queue(call_queue_id, opts)
  p result
rescue ZoomUs::ApiError => e
  puts "Exception when calling PhoneCallQueuesApi->update_call_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **call_queue_id** | **String**| Unique Identifier of the Call Queue. | 
 **body** | [**Body67**](Body67.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json, application/xml



