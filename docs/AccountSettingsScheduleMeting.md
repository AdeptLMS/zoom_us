# ZoomUs::AccountSettingsScheduleMeting

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_video** | **BOOLEAN** | Start meetings with the host video on. | [optional] 
**participant_video** | **BOOLEAN** | Start meetings with the participant video on. Participants can change this setting during the meeting. | [optional] 
**audio_type** | **String** | Determine how participants can join the audio portion of the meeting.&lt;br&gt;&#x60;both&#x60; - Telephony and VoIP.&lt;br&gt;&#x60;telephony&#x60; - Audio PSTN telephony only.&lt;br&gt;&#x60;voip&#x60; - VoIP only.&lt;br&gt;&#x60;thirdParty&#x60; - 3rd party audio conference. | [optional] [default to &#39;both&#39;]
**join_before_host** | **BOOLEAN** | Allow participants to join the meeting before the host arrives. | [optional] 
**enforce_login** | **BOOLEAN** | Only Zoom users who are signed in can join meetings. | [optional] 
**enforce_login_with_domains** | **BOOLEAN** | Only signed in users with a specific domain can join meetings. | [optional] 
**enforce_login_domains** | **String** | Only signed in users with a specified domain can join the meeting.  | [optional] 
**not_store_meeting_topic** | **BOOLEAN** | Always display \&quot;Zoom Meeting\&quot; as the meeting topic. | [optional] 
**force_pmi_jbh_password** | **BOOLEAN** | Require a password for Personal Meetings if attendees can join before host. | [optional] 
**use_pmi_for_scheduled_meetings** | **BOOLEAN** | Use Personal Meeting ID (PMI) when scheduling a meeting  | [optional] 
**use_pmi_for_instant_meetings** | **BOOLEAN** | Use Personal Meeting ID (PMI) when starting an instant meeting  | [optional] 
**require_password_for_scheduling_new_meetings** | **BOOLEAN** | Require a password when scheduling new meetings. This setting applies for regular meetings that do not use PMI. If enabled, a password will be generated while a host schedules a new meeting and participants will be required to enter the password before they can join the meeting. | [optional] 
**require_password_for_scheduled_meetings** | **BOOLEAN** | Require a password for meetings which have already been scheduled  | [optional] 
**require_password_for_instant_meetings** | **BOOLEAN** | Require a password for instant meetings. If you use PMI for your instant meetings, this option will be disabled.  | [optional] 
**require_password_for_pmi_meetings** | **String** | Require a password for a meeting held using Personal Meeting ID (PMI)  | [optional] 


