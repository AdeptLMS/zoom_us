# ZoomUs::SessionWebinarUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **String** | Webinar topic. | [optional] 
**type** | **Integer** | Webinar Types:&lt;br&gt;&#x60;5&#x60; - webinar.&lt;br&gt;&#x60;6&#x60; - Recurring webinar with no fixed time.&lt;br&gt;&#x60;9&#x60; - Recurring webinar with a fixed time. | [optional] 
**start_time** | **DateTime** | Webinar start time, in the format \&quot;yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;.\&quot; Should be in GMT time. In the format \&quot;yyyy-MM-dd&#39;T&#39;HH:mm:ss.\&quot; This should be in local time and the timezone should be specified. Only used for scheduled webinars and recurring webinars with a fixed time. | [optional] 
**duration** | **Integer** | Webinar duration (minutes). Used for scheduled webinar only. | [optional] 
**timezone** | **String** | Time zone to format start_time. For example, \&quot;America/Los_Angeles\&quot;. For scheduled meetings only. Please reference our [time zone](#timezones) list for supported time zones and their formats. | [optional] 
**password** | **String** | Webinar password. Password may only contain the following characters: [a-z A-Z 0-9 @ - _ * !]. Max of 10 characters. | [optional] 
**agenda** | **String** | Webinar description. | [optional] 
**tracking_fields** | [**Array&lt;UsersuserIdmeetingsTrackingFields&gt;**](UsersuserIdmeetingsTrackingFields.md) | Tracking fields | [optional] 
**recurrence** | [**UsersuserIdmeetingsRecurrence**](UsersuserIdmeetingsRecurrence.md) |  | [optional] 
**settings** | **Object** |  | [optional] 


