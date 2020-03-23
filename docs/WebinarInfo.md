# ZoomUs::WebinarInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **String** | Webinar topic. | [optional] 
**type** | **Integer** | Webinar Types:&lt;br&gt;&#x60;5&#x60; - Webinar.&lt;br&gt;&#x60;6&#x60; - Recurring webinar with no fixed time.&lt;br&gt;&#x60;9&#x60; - Recurring webinar with a fixed time. | [optional] 
**start_time** | **DateTime** | Webinar start time. | [optional] 
**duration** | **Integer** | Webinar duration. | [optional] 
**timezone** | **String** | Time zone to format start_time. | [optional] 
**agenda** | **String** | Webinar agenda. | [optional] 
**created_at** | **DateTime** | Create time. | [optional] 
**start_url** | **String** | &lt;br&gt;&lt;aside&gt;The &lt;code&gt;start_url&lt;/code&gt; of a Webinar is a URL using which a host or an alternative host can start the Webinar.   The expiration time for the &lt;code&gt;start_url&lt;/code&gt; field listed in the response of [Create a Webinar API](https://marketplace.zoom.us/docs/api-reference/zoom-api/webinars/webinarcreate) is two hours for all regular users.    For users created using the &lt;code&gt;custCreate&lt;/code&gt; option via the [Create Users](https://marketplace.zoom.us/docs/api-reference/zoom-api/users/usercreate) API, the expiration time of the &lt;code&gt;start_url&lt;/code&gt; field is 90 days.   For security reasons, to retrieve the latest value for the &lt;code&gt;start_url&lt;/code&gt; field programmatically (after expiry), you must call the [Retrieve a Webinar API](https://marketplace.zoom.us/docs/api-reference/zoom-api/webinars/webinar) and refer to the value of the &lt;code&gt;start_url&lt;/code&gt; field in the response.&lt;/aside&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt; | [optional] 
**join_url** | **String** | Join URL. | [optional] 
**tracking_fields** | [**Array&lt;UsersuserIdmeetingsTrackingFields&gt;**](UsersuserIdmeetingsTrackingFields.md) | Tracking fields | [optional] 
**occurrences** | [**Array&lt;InlineResponse20110Occurrences&gt;**](InlineResponse20110Occurrences.md) | Array of occurrence objects. | [optional] 
**settings** | [**InlineResponse20118Settings**](InlineResponse20118Settings.md) |  | [optional] 
**recurrence** | [**RecurrenceWebinar**](RecurrenceWebinar.md) |  | [optional] 


