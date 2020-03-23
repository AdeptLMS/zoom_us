# ZoomUs::AccountSettingsRecording

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local_recording** | **BOOLEAN** | Allow hosts and participants to record the meeting using a local file. | [optional] 
**cloud_recording** | **BOOLEAN** | Allow hosts to record and save the meeting in the cloud. | [optional] 
**record_speaker_view** | **BOOLEAN** | Record the active speaker with a shared screen. | [optional] 
**record_gallery_view** | **BOOLEAN** | Record the gallery view with a shared screen. | [optional] 
**record_audio_file** | **BOOLEAN** | Record an audio only file. | [optional] 
**save_chat_text** | **BOOLEAN** | Save the chat text from the meeting. | [optional] 
**show_timestamp** | **BOOLEAN** | Add a timestamp to the recording. | [optional] 
**recording_audio_transcript** | **BOOLEAN** | Automatically transcribe the audio of the meeting or webinar to the cloud. | [optional] 
**auto_recording** | **String** | Automatic recording:&lt;br&gt;&#x60;local&#x60; - Record on local.&lt;br&gt;&#x60;cloud&#x60; -  Record on cloud.&lt;br&gt;&#x60;none&#x60; - Disabled. | [optional] 
**cloud_recording_download** | **BOOLEAN** | Cloud recording downloads. | [optional] 
**cloud_recording_download_host** | **BOOLEAN** | Only the host can download cloud recordings. | [optional] 
**account_user_access_recording** | **BOOLEAN** | Cloud recordings are only accessible to account members. People outside of your organization cannot open links that provide access to cloud recordings. | [optional] 
**auto_delete_cmr** | **BOOLEAN** | Allow Zoom to permanantly delete recordings automatically after a specified number of days. | [optional] 
**auto_delete_cmr_days** | **Integer** | When &#x60;auto_delete_cmr&#x60; function is &#39;true&#39; this value will set the number of days before the auto deletion of cloud recordings. | [optional] 


