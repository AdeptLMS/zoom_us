# ZoomUs::InlineResponse20046Users

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | User ID. | [optional] 
**first_name** | **String** | User&#39;s first name. | [optional] 
**last_name** | **String** | User&#39;s last name. | [optional] 
**email** | **String** | User&#39;s email address. | [default to &#39;john.doe@gmail.com&#39;]
**type** | **Integer** | User&#39;s plan type.&lt;br&gt; &#x60;1&#x60; - Basic.&lt;br&gt; &#x60;2&#x60; - Licensed.&lt;br&gt; &#x60;3&#x60; - On-prem.  | 
**status** | **String** | User&#39;s status | [optional] 
**pmi** | **Integer** | Personal meeting ID of the user. | [optional] 
**timezone** | **String** | The time zone of the user. | [optional] 
**dept** | **String** | Department, if provided by the user. | [optional] 
**created_at** | **DateTime** | The time when user&#39;s account was created. | [optional] 
**last_login_time** | **DateTime** | User&#39;s last login time. There is a three-days buffer period for this field. For example, if user first logged in on 2020-01-01 and then logged out and logged in on 2020-01-02, the value of this field will still reflect the login time of 2020-01-01. However, if the user logs in on 2020-01-04, the value of this field will reflect the corresponding login time since it exceeds the three-day buffer period. | [optional] 
**last_client_version** | **String** | The last client version that user used to login. | [optional] 
**group_ids** | **Array&lt;String&gt;** | IDs of groups where the user is a member. | [optional] 
**im_group_ids** | **Array&lt;String&gt;** | IDs of IM directory groups where the user is a member. | [optional] 
**verified** | **Integer** | Display whether the user&#39;s email address for the Zoom account is verified or not. &lt;br&gt; &#x60;1&#x60; - Verified user email.&lt;br&gt; &#x60;0&#x60; - User&#39;s email not verified. | [optional] 


