# ZoomUs::AccountsaccountIdlockSettingsScheduleMeeting

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_video** | **BOOLEAN** | Start meetings with host video on. | [optional] 
**participant_video** | **BOOLEAN** | Start meetings with participant video on. | [optional] 
**audio_type** | **BOOLEAN** | Determine how participants can join the audio portion of the meeting. | [optional] 
**join_before_host** | **BOOLEAN** | Allow participants to join the meeting before the host arrives | [optional] 
**enforce_login** | **BOOLEAN** | Participants must always sign in before joining the scheduled meeting. | [optional] 
**enforce_login_with_domains** | **BOOLEAN** |  | [optional] 
**enforce_login_domains** | **String** |  | [optional] 
**not_store_meeting_topic** | **BOOLEAN** |  | [optional] 
**require_password_for_scheduling_new_meetings** | **BOOLEAN** | This setting applies for regular meetings that do not use PMI. If enabled, a password will be generated while a host schedules a new meeting and participants will be required to enter the password before they can join the meeting. | [optional] 
**require_password_for_instant_meetings** | **BOOLEAN** | Require password for instant meetings. If you use PMI for your instant meetings, this option will be disabled. | [optional] 
**require_password_for_pmi_meetings** | **BOOLEAN** | Require participants to enter password for PMI meetings. | [optional] 
**meeting_authentication** | **BOOLEAN** |  | [optional] 


