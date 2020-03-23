# ZoomUs::InlineResponse20022

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agenda** | **String** | Agenda. | [optional] 
**created_at** | **DateTime** | Time of creation.  | [optional] 
**duration** | **Integer** | Meeting duration. | [optional] 
**encrypted_password** | **String** | Encrypted password for third party endpoints (H323/SIP). | [optional] 
**h323_password** | **String** | H.323/SIP room system password. | [optional] 
**host_id** | **String** | ID of the user who is set as host of meeting. | [optional] 
**id** | **Integer** | Meeting ID: also known as the meeting number. | [optional] 
**join_url** | **String** | Join URL. | [optional] 
**occurrences** | [**Array&lt;InlineResponse20110Occurrences&gt;**](InlineResponse20110Occurrences.md) | Array of occurrence objects. | [optional] 
**password** | **String** | Meeting password. | [optional] 
**pmi** | **Integer** | Personal Meeting Id. Only used for scheduled meetings and recurring meetings with no fixed time. | [optional] 
**recurrence** | [**UsersuserIdmeetingsRecurrence**](UsersuserIdmeetingsRecurrence.md) |  | [optional] 
**settings** | [**InlineResponse20110Settings**](InlineResponse20110Settings.md) |  | [optional] 
**start_time** | **DateTime** | Meeting start time. | [optional] 
**start_url** | **String** | &lt;br&gt;&lt;aside&gt;The &lt;code&gt;start_url&lt;/code&gt; of a Meeting is a URL using which a host or an alternative host can start the Meeting.   The expiration time for the &lt;code&gt;start_url&lt;/code&gt; field listed in the response of [Create a Meeting API](https://marketplace.zoom.us/docs/api-reference/zoom-api/meetings/meetingcreate) is two hours for all regular users.    For users created using the &lt;code&gt;custCreate&lt;/code&gt; option via the [Create Users](https://marketplace.zoom.us/docs/api-reference/zoom-api/users/usercreate) API, the expiration time of the &lt;code&gt;start_url&lt;/code&gt; field is 90 days.   For security reasons, to retrieve the updated value for the &lt;code&gt;start_url&lt;/code&gt; field programmatically (after the expiry time), you must call the [Retrieve a Meeting API](https://marketplace.zoom.us/docs/api-reference/zoom-api/meetings/meeting) and refer to the value of the &lt;code&gt;start_url&lt;/code&gt; field in the response.&lt;/aside&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt; | [optional] 
**status** | **String** | Meeting status | [optional] 
**timezone** | **String** | Timezone to format the meeting start time. | [optional] 
**topic** | **String** | Meeting topic. | [optional] 
**tracking_fields** | [**Array&lt;UsersuserIdmeetingsTrackingFields&gt;**](UsersuserIdmeetingsTrackingFields.md) | Tracking fields | [optional] 
**type** | **Integer** | Meeting Types:&lt;br&gt;&#x60;1&#x60; - Instant meeting.&lt;br&gt;&#x60;2&#x60; - Scheduled meeting.&lt;br&gt;&#x60;3&#x60; - Recurring meeting with no fixed time.&lt;br&gt;&#x60;8&#x60; - Recurring meeting with a fixed time. | [optional] 
**uuid** | **String** | Unique meeting ID. Each meeting instance will generate its own Meeting UUID. Please double encode your UUID when using it for API calls if the UUID begins with a &#39;/&#39;or contains &#39;//&#39; in it.  | [optional] 


