# ZoomUs::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** | User&#39;s first name. | [optional] 
**last_name** | **String** | User&#39;s last name. | [optional] 
**email** | **String** | User&#39;s email address. | [default to &#39;john.doe@email.com&#39;]
**type** | **Integer** | User&#39;s plan type:&lt;br&gt;&#x60;1&#x60; - Basic.&lt;br&gt;&#x60;2&#x60; - Licensed.&lt;br&gt;&#x60;3&#x60; - On-prem. | 
**role_name** | **String** | User&#39;s [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) name. | [optional] 
**pmi** | **Integer** | Personal meeting ID. | [optional] 
**use_pmi** | **BOOLEAN** | Use Personal Meeting ID for instant meetings. | [optional] [default to false]
**timezone** | **String** | The time zone of the user. | [optional] 
**dept** | **String** | Department. | [optional] 
**created_at** | **DateTime** | User create time. | [optional] 
**last_login_time** | **DateTime** | User last login time. | [optional] 
**last_client_version** | **String** | User last login client version. | [optional] 


