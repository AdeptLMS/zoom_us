# ZoomUs::RecurrenceWebinar

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **Integer** | Recurrence webinar types:&lt;br&gt;&#x60;1&#x60; - Daily.&lt;br&gt;&#x60;2&#x60; - Weekly.&lt;br&gt;&#x60;3&#x60; - Monthly. | [optional] 
**repeat_interval** | **Integer** | At which interval should the webinar repeat? For a daily webinar, there&#39;s a maximum of 90 days. For a weekly webinar, there is a maximum of 12 weeks. For a monthly webinar, there is a maximum of 3 months. | [optional] 
**weekly_days** | **Integer** | Days of the week the webinar should repeat.  Note: Multiple values should be separated by a comma. &lt;br&gt;&#x60;1&#x60;  - Sunday. &lt;br&gt;&#x60;2&#x60; - Monday.&lt;br&gt;&#x60;3&#x60; - Tuesday.&lt;br&gt;&#x60;4&#x60; -  Wednesday.&lt;br&gt;&#x60;5&#x60; -  Thursday.&lt;br&gt;&#x60;6&#x60; - Friday.&lt;br&gt;&#x60;7&#x60; - Saturday. | [optional] 
**monthly_day** | **Integer** | Day in the month the webinar is to be scheduled. The value range is from 1 to 31. | [optional] 
**monthly_week** | **Integer** | The week for a webinar to recur each month.&lt;br&gt;&#x60;-1&#x60; - Last week.&lt;br&gt;&#x60;1&#x60; - First week.&lt;br&gt;&#x60;2&#x60; - Second week.&lt;br&gt;&#x60;3&#x60; - Third week.&lt;br&gt;&#x60;4&#x60; - Fourth week. | [optional] 
**monthly_week_day** | **Integer** | The weekday a webinar should recur each month.&lt;br&gt;&#x60;1&#x60; - Sunday.&lt;br&gt;&#x60;2&#x60; - Monday.&lt;br&gt;&#x60;3&#x60; - Tuesday.&lt;br&gt;&#x60;4&#x60; -  Wednesday.&lt;br&gt;&#x60;5&#x60; - Thursday.&lt;br&gt;&#x60;6&#x60; - Friday.&lt;br&gt;&#x60;7&#x60; - Saturday. | [optional] 
**end_times** | **Integer** | Select how many times the webinar will recur before it is canceled. (Cannot be used with \&quot;end_date_time\&quot;.) | [optional] 
**end_date_time** | **DateTime** | Select a date when the webinar will recur before it is canceled. Should be in UTC time, such as 2017-11-25T12:00:00Z. (Cannot be used with \&quot;end_times\&quot;.) | [optional] 


