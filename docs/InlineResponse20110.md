# ZoomUs::InlineResponse20110

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **String** | Meeting topic | [optional] 
**type** | **Integer** | Meeting Type | [optional] 
**start_time** | **DateTime** | Meeting start time | [optional] 
**duration** | **Integer** | Meeting duration | [optional] 
**timezone** | **String** | Timezone to format start_time | [optional] 
**created_at** | **DateTime** | The date and time at which this meeting was created. | [optional] 
**agenda** | **String** | Agenda | [optional] 
**start_url** | **String** | Start url | [optional] 
**join_url** | **String** | Join url | [optional] 
**password** | **String** | Meeting password. Password may only contain the following characters: &#x60;[a-z A-Z 0-9 @ - _ * !]&#x60; | [optional] 
**h323_password** | **String** | H.323/SIP room system password | [optional] 
**pmi** | **Integer** | Personal Meeting Id. Only used for scheduled meetings and recurring meetings with no fixed time. | [optional] 
**tracking_fields** | [**Array&lt;UsersuserIdmeetingsTrackingFields&gt;**](UsersuserIdmeetingsTrackingFields.md) | Tracking fields | [optional] 
**occurrences** | [**Array&lt;InlineResponse20110Occurrences&gt;**](InlineResponse20110Occurrences.md) | Array of occurrence objects. | [optional] 
**settings** | [**InlineResponse20110Settings**](InlineResponse20110Settings.md) |  | [optional] 
**recurrence** | [**UsersuserIdmeetingsRecurrence**](UsersuserIdmeetingsRecurrence.md) |  | [optional] 


