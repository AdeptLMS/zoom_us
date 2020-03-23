# ZoomUs::InlineResponse2006

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **Date** | The date provided in the query parameter. If a date is not provided, the default value is the **current date**. | [optional] 
**page_size** | **Integer** | The number of records returned with a single API call. | [optional] 
**next_page_token** | **String** | The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.  | [optional] 
**messages** | [**Array&lt;InlineResponse2006Messages&gt;**](InlineResponse2006Messages.md) | List of message(s). | [optional] 


