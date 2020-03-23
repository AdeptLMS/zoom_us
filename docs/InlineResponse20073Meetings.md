# ZoomUs::InlineResponse20073Meetings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | Universally Unique Identifier of a meeting instance. Each meeting instance will have its own meeting UUID. | [optional] 
**id** | **String** | Meeting ID - Unique Identifier for a meeting, also known as Meeting Number. | [optional] 
**host_id** | **String** | User ID of the user who is set as the host of the meeting. | [optional] 
**topic** | **String** | Meeting topic. | [optional] 
**start_time** | **DateTime** | The date and time at which the meeting started. | [optional] 
**duration** | **Integer** | The scheduled duration of the meeting. | [optional] 
**total_size** | **Integer** | The total size of the meeting in bytes. | [optional] 
**recording_count** | **Integer** | The total number of recordings retrieved from the account. | [optional] 
**recording_files** | [**Array&lt;InlineResponse20073RecordingFiles&gt;**](InlineResponse20073RecordingFiles.md) | Recording files object | [optional] 


