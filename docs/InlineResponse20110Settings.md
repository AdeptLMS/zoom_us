# ZoomUs::InlineResponse20110Settings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_video** | **BOOLEAN** | Start video when the host joins the meeting. | [optional] 
**participant_video** | **BOOLEAN** | Start video when participants join the meeting. | [optional] 
**cn_meeting** | **BOOLEAN** | Host meeting in China. | [optional] [default to false]
**in_meeting** | **BOOLEAN** | Host meeting in India. | [optional] [default to false]
**join_before_host** | **BOOLEAN** | Allow participants to join the meeting before the host starts the meeting. Only used for scheduled or recurring meetings. | [optional] [default to false]
**mute_upon_entry** | **BOOLEAN** | Mute participants upon entry. | [optional] [default to false]
**watermark** | **BOOLEAN** | Add watermark when viewing a shared screen. | [optional] [default to false]
**use_pmi** | **BOOLEAN** | Use a personal meeting ID. Only used for scheduled meetings and recurring meetings with no fixed time. | [optional] [default to false]
**approval_type** | **Integer** | &#x60;0&#x60; - Automatically approve.&lt;br&gt;&#x60;1&#x60; - Manually approve.&lt;br&gt;&#x60;2&#x60; - No registration required. | [optional] 
**registration_type** | **Integer** | Registration type. Used for recurring meeting with fixed time only. &lt;br&gt;&#x60;1&#x60; Attendees register once and can attend any of the occurrences.&lt;br&gt;&#x60;2&#x60; Attendees need to register for each occurrence to attend.&lt;br&gt;&#x60;3&#x60; Attendees register once and can choose one or more occurrences to attend. | [optional] 
**audio** | **String** | Determine how participants can join the audio portion of the meeting.&lt;br&gt;&#x60;both&#x60; - Both Telephony and VoIP.&lt;br&gt;&#x60;telephony&#x60; - Telephony only.&lt;br&gt;&#x60;voip&#x60; - VoIP only. | [optional] [default to &#39;both&#39;]
**auto_recording** | **String** | Automatic recording:&lt;br&gt;&#x60;local&#x60; - Record on local.&lt;br&gt;&#x60;cloud&#x60; -  Record on cloud.&lt;br&gt;&#x60;none&#x60; - Disabled. | [optional] [default to &#39;none&#39;]
**enforce_login** | **BOOLEAN** | Only signed in users can join this meeting. | [optional] 
**enforce_login_domains** | **String** | Only signed in users with specified domains can join meetings. | [optional] 
**alternative_hosts** | **String** | Alternative host&#39;s emails or IDs: multiple values separated by a comma. | [optional] 
**close_registration** | **BOOLEAN** | Close registration after event date | [optional] [default to false]
**waiting_room** | **BOOLEAN** | Enable waiting room | [optional] [default to false]
**global_dial_in_countries** | **Array&lt;String&gt;** | List of global dial-in countries | [optional] 
**global_dial_in_numbers** | [**Array&lt;InlineResponse20110SettingsGlobalDialInNumbers&gt;**](InlineResponse20110SettingsGlobalDialInNumbers.md) | Global Dial-in Countries/Regions | [optional] 
**contact_name** | **String** | Contact name for registration | [optional] 
**contact_email** | **String** | Contact email for registration | [optional] 
**registrants_confirmation_email** | **BOOLEAN** | Send confirmation email to registrants | [optional] 
**registrants_email_notification** | **String** | registrants email notification | [optional] 
**meeting_authentication** | **BOOLEAN** | Only authenticated users can join meetings | [optional] 
**authentication_option** | **String** | Meeting authentication option id | [optional] 
**authentication_domains** | **String** | Meeting authentication_domains | [optional] 


