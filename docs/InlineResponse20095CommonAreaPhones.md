# ZoomUs::InlineResponse20095CommonAreaPhones

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique Identifier of the common area phone. | [optional] 
**display_name** | **String** | Display name of the common area phone. | [optional] 
**device_type** | **String** | Type of device (manufacturer name + model name). Refer to the table here for a list of [supported devices](https://marketplace.zoom.us/docs/api-reference/other-references/zoomphone-supporteddevice). | [optional] 
**mac_address** | **String** |  Mac address or serial number. | [optional] 
**calling_plans** | [**Array&lt;InlineResponse20095CallingPlans&gt;**](InlineResponse20095CallingPlans.md) |  | [optional] 
**phone_numbers** | [**Array&lt;InlineResponse20095PhoneNumbers&gt;**](InlineResponse20095PhoneNumbers.md) |  | [optional] 
**status** | **String** | Status of the common area phone. It can be either &#x60;online&#x60; or &#x60;offline&#x60;. | [optional] 
**site** | [**InlineResponse20095Site**](InlineResponse20095Site.md) |  | [optional] 


