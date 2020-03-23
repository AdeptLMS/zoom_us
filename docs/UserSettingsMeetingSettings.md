# ZoomUs::UserSettingsMeetingSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_video** | **BOOLEAN** | Start meetings with host video on. | [optional] 
**participants_video** | **BOOLEAN** | Start meetings with participants video on. | [optional] 
**audio_type** | **String** | Determine how participants can join the audio portion of the meeting:&lt;br&gt;&#x60;both&#x60; - Telephony and VoIP.&lt;br&gt;&#x60;telephony&#x60; - Audio PSTN telephony only.&lt;br&gt;&#x60;voip&#x60; - VoIP only.&lt;br&gt;&#x60;thirdParty&#x60; - Third party audio conference. | [optional] [default to &#39;voip&#39;]
**join_before_host** | **BOOLEAN** | Join the meeting before host arrives. | [optional] 
**force_pmi_jbh_password** | **BOOLEAN** | Require a password for personal meetings if attendees can join before host. | [optional] 
**pstn_password_protected** | **BOOLEAN** | Generate and require password for participants joining by phone. | [optional] 
**use_pmi_for_scheduled_meetings** | **BOOLEAN** | Use Personal Meeting ID (PMI) when scheduling a meeting  | [optional] 
**use_pmi_for_instant_meetings** | **BOOLEAN** | Use Personal Meeting ID (PMI) when starting an instant meeting  | [optional] 
**require_password_for_scheduling_new_meetings** | **BOOLEAN** | Require a password when scheduling new meetings  | [optional] 
**require_password_for_scheduled_meetings** | **BOOLEAN** | Require a password for meetings which have already been scheduled  | [optional] 
**default_password_for_scheduled_meetings** | **String** | Password for already scheduled meetings  | [optional] 
**require_password_for_instant_meetings** | **BOOLEAN** | Require a password for instant meetings. If you use PMI for your instant meetings, this option will be disabled.  | [optional] 
**require_password_for_pmi_meetings** | **String** | Require a password for Personal Meeting ID (PMI)  | [optional] 
**pmi_password** | **String** | PMI password  | [optional] 


