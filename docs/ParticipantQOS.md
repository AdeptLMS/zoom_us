# ZoomUs::ParticipantQOS

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **String** | Participant ID. | [optional] 
**user_name** | **String** | Participant display name. | [optional] 
**device** | **String** | The type of device using which the participant joined the meeting. | [optional] 
**ip_address** | **String** | Participant&#39;s IP address. | [optional] 
**location** | **String** | Participant&#39;s location. | [optional] 
**join_time** | **DateTime** | The time at which participant joined the meeting. | [optional] 
**leave_time** | **DateTime** | The time at which participant left the meeting. | [optional] 
**pc_name** | **String** | Participant&#39;s PC name. | [optional] 
**domain** | **String** | Participant&#39;s PC domain. | [optional] 
**mac_addr** | **String** | Participant&#39;s MAC address. | [optional] 
**harddisk_id** | **String** | Participant&#39;s hard disk ID. | [optional] 
**version** | **String** | Participant&#39;s Zoom Client version. | [optional] 
**user_qos** | [**Array&lt;ParticipantQOSUserQos&gt;**](ParticipantQOSUserQos.md) | Quality of service provided to the user. | [optional] 


