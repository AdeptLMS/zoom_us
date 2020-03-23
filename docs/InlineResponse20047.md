# ZoomUs::InlineResponse20047

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | User&#39;s account ID. | [optional] 
**cms_user_id** | **String** | CMS ID of user, only enabled for Kaltura integration. | [optional] 
**company** | **String** | User&#39;s company. | [optional] 
**created_at** | **DateTime** | User create time. | [optional] 
**dept** | **String** | Department. | [optional] 
**email** | **String** | User&#39;s email address. | [default to &#39;john.doe@email.com&#39;]
**first_name** | **String** | User&#39;s first name. | [optional] 
**group_ids** | **Array&lt;String&gt;** | IDs of the web groups user belongs to.  | [optional] 
**host_key** | **String** | User&#39;s host key. | [optional] 
**id** | **String** | User ID. | [optional] 
**im_group_ids** | **Array&lt;String&gt;** | IM IDs of the groups user belongs to. | [optional] 
**jid** | **String** |  | [optional] 
**job_title** | **String** | User&#39;s job title. | [optional] 
**language** | **String** | Default language for the Zoom Web Portal. | [optional] 
**last_client_version** | **String** | User last login client version. | [optional] 
**last_login_time** | **DateTime** | User last login time. | [optional] 
**last_name** | **String** | User&#39;s last name. | [optional] 
**location** | **String** | User&#39;s location. | [optional] 
**personal_meeting_url** | **String** | User&#39;s personal meeting url. | [optional] 
**phone_country** | **String** | User&#39;s country for Company Phone Number. | [optional] 
**phone_number** | **String** | User&#39;s phone number. | [optional] 
**pic_url** | **String** | The URL for user&#39;s profile picture. | [optional] 
**pmi** | **Integer** | Personal meeting ID. | [optional] 
**role_name** | **String** | User&#39;s [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) name. | [optional] 
**status** | **String** | Status of user&#39;s account. | [optional] 
**timezone** | **String** | The time zone of the user. | [optional] 
**type** | **Integer** | User&#39;s plan type:&lt;br&gt;&#x60;1&#x60; - Basic.&lt;br&gt;&#x60;2&#x60; - Licensed.&lt;br&gt;&#x60;3&#x60; - On-prem. | 
**use_pmi** | **BOOLEAN** | Displays &#x60;true&#x60; if user has enabled PMI for instant meetinsgs, &#x60;false&#x60; otherwise. | [optional] [default to false]
**vanity_url** | **String** | Personal meeting room URL, if the user has one. | [optional] 
**verified** | **Integer** | Displays whether user is verified or not. &lt;br&gt; &#x60;1&#x60; - Account verified.&lt;br&gt; &#x60;0&#x60; - Account not verified. | [optional] 


