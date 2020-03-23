# ZoomUs::MeetingMetric

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | Meeting UUID. Please double encode your UUID when using it for API calls if the UUID begins with a &#39;/&#39;or contains &#39;//&#39; in it. | [optional] 
**id** | **Integer** | Meeting ID. | [optional] 
**topic** | **String** | Meeting topic. | [optional] 
**host** | **String** | Host display name. | [optional] 
**email** | **String** | Email address of the host. | [optional] 
**user_type** | **String** | License type of the user. | [optional] 
**start_time** | **DateTime** | Meeting start time. | [optional] 
**end_time** | **DateTime** | Meeting end time. | [optional] 
**duration** | **String** | Meeting duration. | [optional] 
**participants** | **Integer** | Meeting participant count. | [optional] 
**has_pstn** | **BOOLEAN** | Indicates whether or not the PSTN was used in the meeting. | [optional] 
**has_voip** | **BOOLEAN** | Indicates whether or not VoIP was used in the meeting. | [optional] 
**has_3rd_party_audio** | **BOOLEAN** | Indicates whether or not [third party audio](https://support.zoom.us/hc/en-us/articles/202470795-3rd-Party-Audio-Conference) was used in the meeting. | [optional] 
**has_video** | **BOOLEAN** | Indicates whether or not video was used in the meeting. | [optional] 
**has_screen_share** | **BOOLEAN** | Indicates whether or not screenshare feature was used in the meeting. | [optional] 
**has_recording** | **BOOLEAN** | Indicates whether or not the recording feature was used in the meeting.  | [optional] 
**has_sip** | **BOOLEAN** | Indicates whether or not someone joined the meeting using SIP. | [optional] 
**in_room_participants** | **Integer** | The number of Zoom Room participants in the meeting. | [optional] 
**dept** | **String** | Department of the host. | [optional] 


