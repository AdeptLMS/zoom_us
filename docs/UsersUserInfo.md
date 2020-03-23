# ZoomUs::UsersUserInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | User email address. | 
**type** | **Integer** | User type:&lt;br&gt;&#x60;1&#x60; - Basic.&lt;br&gt;&#x60;2&#x60; - Licensed.&lt;br&gt;&#x60;3&#x60; - On-prem. | 
**first_name** | **String** | User&#39;s first name: cannot contain more than 5 Chinese words. | [optional] 
**last_name** | **String** | User&#39;s last name: cannot contain more than 5 Chinese words. | [optional] 
**password** | **String** | User password. Only used for the \&quot;autoCreate\&quot; function. The password has to have a minimum of 8 characters and maximum of 32 characters. It must have at least one letter (a, b, c..), at least one number (1, 2, 3...) and include both uppercase and lowercase letters. It should not contain only one identical character repeatedly (&#39;11111111&#39; or &#39;aaaaaaaa&#39;) and it cannot contain consecutive characters (&#39;12345678&#39; or &#39;abcdefgh&#39;). | [optional] 


