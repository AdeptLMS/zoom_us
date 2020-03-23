# ZoomUs::RecordingSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**share_recording** | **String** | Determine how the meeting recording is shared. | [optional] 
**recording_authentication** | **BOOLEAN** | Only authenticated users can view. | [optional] 
**authentication_option** | **String** | Authentication Options. | [optional] 
**authentication_domains** | **String** | Authentication domains. | [optional] 
**viewer_download** | **BOOLEAN** | Determine whether a viewer can download the recording file or not. | [optional] 
**password** | **String** | Enable password protection for the recording by setting a password. | [optional] 
**on_demand** | **BOOLEAN** | Determine whether registration  isrequired to view the recording. | [optional] 
**approval_type** | **Integer** | Approval type for the registration.&lt;br&gt; &#x60;0&#x60;- Automatically approve the registration when a user registers.&lt;br&gt; &#x60;1&#x60; - Manually approve or deny the registration of a user.&lt;br&gt; &#x60;2&#x60; - No registration required to view the recording. | [optional] 
**send_email_to_host** | **BOOLEAN** | Send an email to host when someone registers to view the recording. This applies for On-demand recordings only. | [optional] 
**show_social_share_buttons** | **BOOLEAN** | Show social share buttons on registration page. This applies for On-demand recordings only. | [optional] 


