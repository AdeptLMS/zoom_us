# ZoomUs::UserSettingsRecordingSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local_recording** | **BOOLEAN** | Local recording. | [optional] 
**cloud_recording** | **BOOLEAN** | Cloud recording. | [optional] [default to false]
**record_speaker_view** | **BOOLEAN** | Record the active speaker view. | [optional] [default to false]
**record_gallery_view** | **BOOLEAN** | Record the gallery view. | [optional] [default to false]
**record_audio_file** | **BOOLEAN** | Record an audio only file. | [optional] [default to false]
**save_chat_text** | **BOOLEAN** | Save chat text from the meeting. | [optional] [default to false]
**show_timestamp** | **BOOLEAN** | Show timestamp on video. | [optional] [default to false]
**recording_audio_transcript** | **BOOLEAN** | Audio transcript. | [optional] 
**auto_recording** | **String** | Automatic recording:&lt;br&gt;&#x60;local&#x60; - Record on local.&lt;br&gt;&#x60;cloud&#x60; - Record on cloud.&lt;br&gt;&#x60;none&#x60; - Disabled. | [optional] [default to &#39;local&#39;]
**host_pause_stop_recording** | **BOOLEAN** | Host can pause/stop the auto recording in the cloud. | [optional] [default to false]
**auto_delete_cmr** | **BOOLEAN** | Auto delete cloud recordings. | [optional] [default to false]
**auto_delete_cmr_days** | **Integer** | A specified number of days of auto delete cloud recordings. | [optional] 


