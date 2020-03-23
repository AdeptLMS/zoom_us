# ZoomUs::InlineResponse20060

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **DateTime** | Query date time, format as yyyy-mm-dd. | [optional] 
**page_size** | **Integer** | The number of records returned within a single API call. | [optional] 
**next_page_token** | **String** | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes. | [optional] 
**messages** | [**Array&lt;InlineResponse20060Messages&gt;**](InlineResponse20060Messages.md) | Array of im messages. | [optional] 


