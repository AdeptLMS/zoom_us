# ZoomUs::IMGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | IM Group types:&lt;br&gt;&#x60;normal&#x60; - Only members can see the other members in the group. Other people can search for members in the group.&lt;br&gt;&#x60;shared&#x60; - Everyone in the account can see the group and members. &lt;br&gt;&#x60;restricted&#x60; - No one except group members can see the group or search for other group members.  | [optional] [default to &#39;normal&#39;]
**search_by_domain** | **BOOLEAN** | Members can search for others in the same email domain. | [optional] 
**search_by_account** | **BOOLEAN** | Members can search for others under same account. | [optional] 
**search_by_ma_account** | **BOOLEAN** | Members can search for others under same master account - including all sub accounts. | [optional] 


