# ZoomUs::InlineResponse20090CallQueues

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique Identifier of the Call Queue. | [optional] 
**name** | **String** | Name of the Call Queue. | [optional] 
**extension_number** | **Integer** | Extension number assigned to the queue. | [optional] 
**phone_numbers** | [**Array&lt;InlineResponse20090PhoneNumbers&gt;**](InlineResponse20090PhoneNumbers.md) | Phone number(s) assigned to the call queue. | [optional] 
**status** | **String** | Status of the Call Queue.&lt;br&gt;&#x60;active&#x60;: Call queue is enabled and active.&lt;br&gt;&#x60;inactive&#x60;: Call queue is inactive. Inactive call queues cannot be called but will retain its settings and appear in the [Call Queues](https://zoom.us/pbx/page/telephone/groups#/groups) page. | [optional] 
**site** | [**InlineResponse20090Site**](InlineResponse20090Site.md) |  | [optional] 


