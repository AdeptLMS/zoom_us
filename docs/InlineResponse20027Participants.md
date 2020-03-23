# ZoomUs::InlineResponse20027Participants

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Universally unique identifier of the Participant. It is the same as the User ID of the participant if the participant joins the meeting by logging into Zoom. If the participant joins the meeting without logging in, the value of this field will be blank. | [optional] 
**user_id** | **String** | Participant ID | [optional] 
**user_name** | **String** | Participant display name. | [optional] 
**device** | **String** | The type of device using which the participant joined the meeting. | [optional] 
**ip_address** | **String** | Participant&#39;s IP address. | [optional] 
**location** | **String** | Participant&#39;s location. | [optional] 
**network_type** | **String** | Participant&#39;s network type. | [optional] 
**microphone** | **String** | The type of Microphone that participant used during the meeting. | [optional] 
**speaker** | **String** | The type of speaker participant used during the meeting. | [optional] 
**data_center** | **String** | Data Center where participant&#39;s meeting data is stored. | [optional] 
**connection_type** | **String** | Participant connection type. | [optional] 
**join_time** | **DateTime** | The time at which participant joined the meeting. | [optional] 
**leave_time** | **DateTime** | The time at which participant left the meeting. | [optional] 
**share_application** | **BOOLEAN** | Indicates whether or not a user selected to share an iPhone/iPad app during the screenshare.  | [optional] 
**share_desktop** | **BOOLEAN** | Indicates whether or not a user selected to share their desktop during the screenshare.  | [optional] 
**share_whiteboard** | **BOOLEAN** | Indicates whether or not a user selected to share their whiteboard during the screenshare.  | [optional] 
**recording** | **BOOLEAN** | Indicates whether or not recording was used during the meeting. | [optional] 
**pc_name** | **String** | Name of Participant&#39;s PC. | [optional] 
**domain** | **String** | Participant&#39;s PC domain. | [optional] 
**mac_addr** | **String** | Participant&#39;s MAC address. | [optional] 
**harddisk_id** | **String** | Participant&#39;s hard disk ID. | [optional] 
**version** | **String** | Participant&#39;s Zoom Client version. | [optional] 
**in_room_participants** | **Integer** | The number of participants who joined via Zoom Room. | [optional] 
**leave_reason** | **String** | Possible reasons for why participant left the meeting. | [optional] 


