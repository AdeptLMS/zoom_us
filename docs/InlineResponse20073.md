# ZoomUs::InlineResponse20073

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **DateTime** | The start date for the monthly range for which you would like to retrieve recordings. The maximum range can be a month. The month should fall within the past six months period from the date of query. | [optional] 
**to** | **DateTime** | The end date for the monthly range for which you would like to retrieve recordings. The maximum range can be a month. The month should fall within the past six months period from the date of query. | [optional] 
**page_size** | **String** | The number of records returned within a single API call. | [optional] 
**next_page_token** | **String** | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
**meetings** | [**Array&lt;InlineResponse20073Meetings&gt;**](InlineResponse20073Meetings.md) | Meetings Object | [optional] 


