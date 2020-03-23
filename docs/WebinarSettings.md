# ZoomUs::WebinarSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host_video** | **BOOLEAN** | Start video when host joins webinar. | [optional] 
**panelists_video** | **BOOLEAN** | Start video when panelists join webinar. | [optional] 
**practice_session** | **BOOLEAN** | Enable practice session. | [optional] [default to false]
**hd_video** | **BOOLEAN** | Default to HD video. | [optional] [default to false]
**approval_type** | **Integer** | &#x60;0&#x60; - Automatically approve.&lt;br&gt;&#x60;1&#x60; - Manually approve.&lt;br&gt;&#x60;2&#x60; - No registration required. | [optional] 
**registration_type** | **Integer** | Registration types. Only used for recurring webinars with a fixed time.&lt;br&gt;&#x60;1&#x60; - Attendees register once and can attend any of the webinar sessions.&lt;br&gt;&#x60;2&#x60; - Attendees need to register for each session in order to attend.&lt;br&gt;&#x60;3&#x60; - Attendees register once and can choose one or more sessions to attend. | [optional] 
**audio** | **String** | Determine how participants can join the audio portion of the webinar. | [optional] [default to &#39;both&#39;]
**auto_recording** | **String** | Automatic recording:&lt;br&gt;&#x60;local&#x60; - Record on local.&lt;br&gt;&#x60;cloud&#x60; -  Record on cloud.&lt;br&gt;&#x60;none&#x60; - Disabled. | [optional] [default to &#39;none&#39;]
**enforce_login** | **BOOLEAN** | Only signed-in users can join this webinar. | [optional] 
**enforce_login_domains** | **String** | Only signed-in users with specified domains can join webinars. | [optional] 
**alternative_hosts** | **String** | Alternative host emails or IDs. Multiple values separated by comma. | [optional] 
**close_registration** | **BOOLEAN** | Close registration after event date. | [optional] 
**show_share_button** | **BOOLEAN** | Show social share buttons on the registration page. | [optional] 
**allow_multiple_devices** | **BOOLEAN** | Allow attendees to join from multiple devices. | [optional] 
**on_demand** | **BOOLEAN** | Make the webinar on-demand | [optional] [default to false]
**global_dial_in_countries** | **Array&lt;String&gt;** | List of global dial-in countries | [optional] 
**contact_name** | **String** | Contact name for registration | [optional] 
**contact_email** | **String** | Contact email for registration | [optional] 
**registrants_confirmation_email** | **BOOLEAN** | Send confirmation email to registrants | [optional] 
**registrants_restrict_number** | **Integer** | Restrict number of registrants for a webinar. By default, it is set to &#x60;0&#x60;. A &#x60;0&#x60; value means that the restriction option is disabled. Provide a number higher than 0 to restrict the webinar registrants by the that number. | [optional] 
**notify_registrants** | **BOOLEAN** | Send notification email to registrants when the host updates a webinar. | [optional] 
**post_webinar_survey** | **BOOLEAN** | Zoom will open a survey page in attendees&#39; browsers after leaving the webinar | [optional] 
**survey_url** | **String** | Survey url for post webinar survey | [optional] 
**registrants_email_notification** | **BOOLEAN** | registrants email notification | [optional] 
**meeting_authentication** | **BOOLEAN** | Only authenticated users can join meetings | [optional] 
**authentication_option** | **String** | Meeting authentication option id | [optional] 
**authentication_domains** | **String** | Meeting authentication domains | [optional] 


