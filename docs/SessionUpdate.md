# ZoomUs::SessionUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **String** | Meeting topic. | [optional] 
**type** | **Integer** | Meeting Types:&lt;br&gt;&#x60;1&#x60; - Instant meeting.&lt;br&gt;&#x60;2&#x60; - Scheduled meeting.&lt;br&gt;&#x60;3&#x60; - Recurring meeting with no fixed time.&lt;br&gt;&#x60;8&#x60; - Recurring meeting with a fixed time. | [optional] 
**start_time** | **DateTime** | Meeting start time. When using a format like \&quot;yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;\&quot;, always use GMT time. When using a format like \&quot;yyyy-MM-dd&#39;T&#39;HH:mm:ss\&quot;, you should use local time and  specify the time zone. Only used for scheduled meetings and recurring meetings with a fixed time. | [optional] 
**duration** | **Integer** | Meeting duration (minutes). Used for scheduled meetings only. | [optional] 
**timezone** | **String** | Time zone to format start_time. For example, \&quot;America/Los_Angeles\&quot;. For scheduled meetings only. Please reference our [time zone](#timezones) list for supported time zones and their formats. | [optional] 
**password** | **String** | Password to join the meeting. Password may only contain the following characters: [a-z A-Z 0-9 @ - _ * !]. Max of 10 characters. | [optional] 
**agenda** | **String** | Meeting description. | [optional] 
**tracking_fields** | [**Array&lt;UsersuserIdmeetingsTrackingFields&gt;**](UsersuserIdmeetingsTrackingFields.md) | Tracking fields | [optional] 
**recurrence** | [**UsersuserIdmeetingsRecurrence**](UsersuserIdmeetingsRecurrence.md) |  | [optional] 
**settings** | **Object** |  | [optional] 


