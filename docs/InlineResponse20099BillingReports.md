# ZoomUs::InlineResponse20099BillingReports

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique Identifier of the report. Use this ID to retrieve billing invoice via the \&quot;Get Billing Invoices API\&quot;.   You can also use this ID to export a CSV file of the billing report from this URL: &#x60;https://zoom.us/account/report/billing/export?id&#x3D;{id}&#x60;. | [optional] 
**start_date** | **Date** | Start date of the billing period. | [optional] 
**end_date** | **Date** | End date of the billing period. | [optional] 
**total_amount** | **String** | Total billing amount for this billing period. | [optional] 
**tax_amount** | **String** | Total tax amount for this billing period. | [optional] 
**type** | **Integer** | Type of the billing report. The value should be either of the following:&lt;br&gt; &#x60;0&#x60; - Detailed Billing Reports &#x60;1&#x60; - Custom Billing Reports | [optional] 


