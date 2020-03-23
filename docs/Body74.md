# ZoomUs::Body74

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**site_id** | **String** | Unique identifier of the [site](https://support.zoom.us/hc/en-us/articles/360020809672). This can be retrieved from List Sites API. | [optional] 
**display_name** | **String** | Display name of the Common area phone. | 
**description** | **String** | Description for the common area phone. | [optional] 
**extension_number** | **Integer** | Extension number assigned to the common area phone. If site code is enabled, provide the short extension number instead. | 
**mac_address** | **String** | Mac Address (serial number) of the common area desk phone. These examples show the formats supported: &#x60;64-16-7f-37-90-92&#x60; or &#x60;64167f379092&#x60; | 
**type** | **String** | Phone device manufacturer name. Refer to the \&quot;Manufacturer Name\&quot; field in [this](https://marketplace.zoom.us/docs/api-reference/other-references/zoomphone-supporteddevice) table. | 
**model** | **String** | Device Model name. Refer to the \&quot;Model Name\&quot; field in [this](https://marketplace.zoom.us/docs/api-reference/other-references/zoomphone-supporteddevice) table. | [optional] 
**time_zone** | **String** | [Timezone ID](https://marketplace.zoom.us/docs/api-reference/other-references/abbreviation-lists) for the common area phone. | [optional] 


