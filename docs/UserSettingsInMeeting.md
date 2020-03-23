# ZoomUs::UserSettingsInMeeting

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**e2e_encryption** | **BOOLEAN** | End-to-end encryption required for all meetings. | [optional] 
**chat** | **BOOLEAN** | Enable chat during meeting for all participants. | [optional] [default to false]
**private_chat** | **BOOLEAN** | Enable 1:1 private chat between participants during meetings. | [optional] [default to false]
**auto_saving_chat** | **BOOLEAN** | Auto save all in-meeting chats. | [optional] [default to false]
**entry_exit_chime** | **String** | Play sound when participants join or leave:&lt;br&gt;&#x60;host&#x60; - When host joins or leaves.&lt;br&gt;&#x60;all&#x60; - When any participant joins or leaves.&lt;br&gt;&#x60;none&#x60; - No join or leave sound. | [optional] [default to &#39;all&#39;]
**record_play_voice** | **BOOLEAN** | Record and play their own voice. | [optional] 
**file_transfer** | **BOOLEAN** | Enable file transfer through in-meeting chat. | [optional] [default to false]
**feedback** | **BOOLEAN** | Enable option to send feedback to Zoom at the end of the meeting. | [optional] [default to false]
**co_host** | **BOOLEAN** | Allow the host to add co-hosts. | [optional] [default to false]
**polling** | **BOOLEAN** | Add polls to the meeting controls. | [optional] [default to false]
**attendee_on_hold** | **BOOLEAN** | Allow host to put attendee on hold. | [optional] [default to false]
**annotation** | **BOOLEAN** | Allow participants to use annotation tools. | [optional] [default to false]
**remote_control** | **BOOLEAN** | Enable remote control during screensharing. | [optional] [default to false]
**non_verbal_feedback** | **BOOLEAN** | Enable non-verbal feedback through screens. | [optional] [default to false]
**breakout_room** | **BOOLEAN** | Allow host to split meeting participants into separate breakout rooms. | [optional] [default to false]
**remote_support** | **BOOLEAN** | Allow host to provide 1:1 remote support to a participant. | [optional] [default to false]
**closed_caption** | **BOOLEAN** | Enable closed captions. | [optional] [default to false]
**group_hd** | **BOOLEAN** | Enable group HD video. | [optional] [default to false]
**virtual_background** | **BOOLEAN** | Enable virtual background. | [optional] [default to false]
**far_end_camera_control** | **BOOLEAN** | Allow another user to take control of the camera. | [optional] [default to false]
**share_dual_camera** | **BOOLEAN** | Share dual camera (deprecated). | [optional] [default to false]
**attention_tracking** | **BOOLEAN** | Allow host to see if a participant does not have Zoom in focus during screen sharing. | [optional] [default to false]
**waiting_room** | **BOOLEAN** | Enable Waiting room - if enabled, attendees can only join after host approves. | [optional] [default to false]
**allow_live_streaming** | **BOOLEAN** | Allow live streaming. | [optional] 
**workplace_by_facebook** | **BOOLEAN** | Allow livestreaming by host through Workplace by Facebook. | [optional] 
**custom_live_streaming** | **BOOLEAN** | Allow custom live streaming. | [optional] 
**custom_service_instructions** | **String** | Custom service instructions. | [optional] 
**show_meeting_control_toolbar** | **BOOLEAN** | Always show meeting controls during a meeting. | [optional] 


