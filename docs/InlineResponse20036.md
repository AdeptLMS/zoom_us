# ZoomUs::InlineResponse20036

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | Meeting UUID. | [optional] 
**id** | **Integer** | Meeting ID. | [optional] 
**type** | **Integer** | Meeting type. | [optional] 
**topic** | **String** | Meeting topic. | [optional] 
**user_name** | **String** | User display name. | [optional] 
**user_email** | **String** | User email. | [optional] 
**start_time** | **DateTime** | Meeting start time. | [optional] 
**end_time** | **DateTime** | Meeting end time. | [optional] 
**duration** | **Integer** | Meeting duration. | [optional] 
**total_minutes** | **Integer** | Number of meeting minutes. This represents the total amount of meeting minutes attended by each participant including the host, for meetings hosted by the user. For instance if there were one host(named A) and one participant(named B) in a meeting, the value of total_minutes would be calculated as below:  **total_minutes** &#x3D; Total Meeting Attendance Minutes of A + Total Meeting Attendance Minutes of B | [optional] 
**participants_count** | **Integer** | Number of meeting participants. | [optional] 
**tracking_fields** | [**Array&lt;InlineResponse20036TrackingFields&gt;**](InlineResponse20036TrackingFields.md) | Tracking fields. | [optional] 
**dept** | **String** | Department of the host. | [optional] 


