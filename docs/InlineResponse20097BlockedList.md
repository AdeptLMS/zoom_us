# ZoomUs::InlineResponse20097BlockedList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier of the blocked list. | [optional] 
**match_type** | **String** | Indicates the match type for the blocked list. The values can be one of the following:&lt;br&gt; &#x60;phoneNumber&#x60;: Indicates that only a specific phone number that is shown in the &#x60;phone_number&#x60; field is blocked.&lt;br&gt;&lt;br&gt; &#x60;prefix&#x60;: Indicates that all numbers starting with prefix that is shown in the &#x60;phone_number&#x60; field are blocked. | [optional] 
**phone_number** | **String** | The phone number to be blocked if you passed \&quot;phoneNumber\&quot; as the value for the &#x60;match_type&#x60; field. If you passed \&quot;prefix\&quot; as the value for the &#x60;match_type&#x60; field, provide the prefix of the phone number here including the country code. For example, entering 1905 blocks numbers with country code 1 and area code 905.  | [optional] 
**block_type** | **String** | Block type.&lt;br&gt; &#x60;inbound&#x60;: The blocked number or numbers with the specifie prefix are prevented from calling in to phone users.&lt;br&gt;&lt;br&gt; &#x60;outbound&#x60;: The phone users  are prevented from calling the blocked number or numbers with the specified prefix. | [optional] 
**status** | **String** | Indicates whether the blocking is active or inactive. &lt;br&gt; &#x60;active&#x60;: The blocked list is active.&lt;br&gt; &#x60;inactive&#x60;: The blocked list is inactive. | [optional] 
**comment** | **String** | Provide a comment to help you identify the blocked number or prefix. | [optional] 


