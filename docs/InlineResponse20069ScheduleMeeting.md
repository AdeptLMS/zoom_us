# ZoomUs::InlineResponse20069ScheduleMeeting

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_video** | **BOOLEAN** | Start meetings with host video on. | [optional] 
**participant_video** | **BOOLEAN** | Start meetings with participant video on. | [optional] 
**audio_type** | **BOOLEAN** | Determine how participants can join the audio portion of the meeting. | [optional] 
**join_before_host** | **BOOLEAN** | Allow participants to join the meeting before the host arrives | [optional] 
**force_pmi_jbh_password** | **BOOLEAN** | If join before host option is enabled for a personal meeting, then enforce password requirement. | [optional] 
**require_password_for_scheduling_new_meetings** | **BOOLEAN** | This setting applies for regular meetings that do not use PMI. If enabled, a password will be generated while a host schedules a new meeting and participants will be required to enter the password before they can join the meeting. | [optional] 
**require_password_for_instant_meetings** | **BOOLEAN** | Require password for instant meetings. If you use PMI for your instant meetings, this option will be disabled. | [optional] 
**require_password_for_pmi_meetings** | **BOOLEAN** | Require participants to enter password for PMI meetings. | [optional] 
**pstn_password_protected** | **BOOLEAN** | Generate and send new passwords for newly scheduled or edited meetings. | [optional] 
**mute_upon_entry** | **BOOLEAN** | Automatically mute all participants when they join the meeting. | [optional] 
**upcoming_meeting_reminder** | **BOOLEAN** | Receive desktop notification for upcoming meetings. | [optional] 
**meeting_authentication** | **BOOLEAN** | Only authenticated users can join meetings | [optional] 


