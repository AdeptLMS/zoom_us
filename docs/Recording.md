# ZoomUs::Recording

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The recording file ID. Included in the response of general query. | [optional] 
**meeting_id** | **String** | The meeting ID.  | [optional] 
**recording_start** | **String** | The recording start time. | [optional] 
**recording_end** | **String** | The recording end time. Response in general query. | [optional] 
**file_type** | **String** | The recording file type. The value of this field could be one of the following:&lt;br&gt; &#x60;MP4&#x60;: Video file of the recording.&lt;br&gt;&#x60;M4A&#x60; Audio-only file of the recording.&lt;br&gt;&#x60;TIMELINE&#x60;: Timestamp file of the recording.&lt;br&gt; &#x60;TRANSCRIPT&#x60;: Transcription file of the recording.&lt;br&gt; &#x60;CHAT&#x60;: A TXT file containing in-meeting chat messages that were sent during the meeting.&lt;br&gt;&#x60;CC&#x60;: File containing closed captions of the recording.&lt;br&gt;&lt;br&gt; A recording file object with file type of either &#x60;CC&#x60; or &#x60;TIMELINE&#x60; **does not have** the following properties:&lt;br&gt;  &#x60;id&#x60;, &#x60;status&#x60;, &#x60;file_size&#x60;, &#x60;recording_type&#x60;, and &#x60;play_url&#x60;. | [optional] 
**file_size** | **Float** | The recording file size. | [optional] 
**play_url** | **String** | The URL using which a recording file can be played. | [optional] 
**download_url** | **String** | The URL using which the recording file can be downloaded. To access a private or password protected cloud recording, you must use a [Zoom JWT App Type](https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-jwt-app). USe the generated JWT token as the value of the &#x60;access_token&#x60; query parameter and include this query parameter at the end of the URL as shown in the example. &lt;br&gt; Example: &#x60;https://api.zoom.us/recording/download/{{ Download Path }}?access_token&#x3D;{{ JWT Token }}&#x60; | [optional] 
**status** | **String** | The recording status. | [optional] 
**deleted_time** | **String** | The time at which recording was deleted. Returned in the response only for trash query. | [optional] 
**recording_type** | **String** | The recording type. The value of this field can be one of the following:&lt;br&gt;&#x60;shared_screen_with_speaker_view(CC)&#x60;&lt;br&gt;&#x60;shared_screen_with_speaker_view&#x60;&lt;br&gt;&#x60;shared_screen_with_gallery_view&#x60;&lt;br&gt;&#x60;speaker_view&#x60;&lt;br&gt;&#x60;gallery_view&#x60;&lt;br&gt;&#x60;shared_screen&#x60;&lt;br&gt;&#x60;audio_only&#x60;&lt;br&gt;&#x60;audio_transcript&#x60;&lt;br&gt;&#x60;chat_file&#x60;&lt;br&gt;&#x60;TIMELINE&#x60; | [optional] 


