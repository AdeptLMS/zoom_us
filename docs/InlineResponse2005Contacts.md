# ZoomUs::InlineResponse2005Contacts

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | User ID of the contact. | [optional] 
**email** | **String** | Email address of the contact. | [optional] 
**first_name** | **String** | First name of the contact. | [optional] 
**last_name** | **String** | Last name of the contact. | [optional] 
**presence_status** | **String** | Presence status of the contact in Zoom Client. The value of this field can be one of the following: &#x60;Do_Not_Disturb&#x60;&lt;br&gt; &#x60;away&#x60;&lt;br&gt; &#x60;Available&#x60;&lt;br&gt; &#x60;Offline&#x60; | [optional] 
**phone_number** | **String** | Phone number of the user. | [optional] 
**sip_phone_number** | **String** | SIP Phone number of the user. Returned only if user has SIP phone enabled. | [optional] 
**direct_numbers** | **Array&lt;String&gt;** | Direct Number(s) of a user who has Zoom Phone license assigned. | [optional] 
**extension_number** | **String** | Extension Number of a user who has Zoom Phone license assigned. | [optional] 
**im_group_id** | **String** | Unique Identifier of the [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) in which the user has been added. An IM Directory group is not the same as a channel. IM Directory allows administrators to assign users in their account to groups that display within the Contacts list on Zoom clients.  | [optional] 
**im_group_name** | **String** | Name of the [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) in which the user has been added. An IM Directory group is not the same as a channel. IM Directory allows administrators to assign users in their account to groups that display within the Contacts list on Zoom clients.  | [optional] 


