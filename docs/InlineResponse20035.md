# ZoomUs::InlineResponse20035

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **Date** | Start date for this report. | [optional] 
**meetings** | [**Array&lt;InlineResponse20035Meetings&gt;**](InlineResponse20035Meetings.md) | Array of meeting objects. | [optional] 
**next_page_token** | **String** | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
**page_count** | **Integer** | The number of pages returned for the request made. | [optional] 
**page_number** | **Integer** | The page number of the current results. | [optional] 
**page_size** | **Integer** | The number of records returned with a single API call. | [optional] 
**to** | **Date** | End date for this report. | [optional] 
**total_records** | **Integer** | The total number of all the records available across pages. | [optional] 


