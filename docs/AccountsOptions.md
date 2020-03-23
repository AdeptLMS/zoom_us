# ZoomUs::AccountsOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**share_rc** | **BOOLEAN** | Enable/disable the option for a Sub Account to use shared [Virtual Room Connector(s)](https://support.zoom.us/hc/en-us/articles/202134758-Getting-Started-With-Virtual-Room-Connector) that are set up by the Master Account. Virtual Room Connectors can only be used by On-prem users. | [optional] [default to false]
**room_connectors** | **String** | Specify the IP addresses of the Room Connectors that you would like to share with the Sub Account. Multiple values can be separated by comma. If no value is provided in this field, all the Room Connectors of a Master Account will be shared with the Sub Account.   **Note:** This option can only be used if the value of &#x60;share_rc&#x60; is set to &#x60;true&#x60;. | [optional] 
**share_mc** | **BOOLEAN** | Enable/disable the option for a Sub Account to use shared [Meeting Connector(s)](https://support.zoom.us/hc/en-us/articles/201363093-Getting-Started-with-the-Meeting-Connector) that are set up by the Master Account. Meeting Connectors can only be used by On-prem users. | [optional] [default to false]
**meeting_connectors** | **String** | Specify the IP addresses of the Meeting Connectors that you would like to share with the Sub Account. Multiple values can be separated by comma. If no value is provided in this field, all the Meeting Connectors of a Master Account will be shared with the Sub Account.   **Note:** This option can only be used if the value of &#x60;share_mc&#x60; is set to &#x60;true&#x60;. | [optional] 
**pay_mode** | **String** | Payee:&lt;br&gt;&#x60;master&#x60; - Master account holder pays.&lt;br&gt;&#x60;sub&#x60; - Sub account holder pays. | [optional] [default to &#39;master&#39;]


