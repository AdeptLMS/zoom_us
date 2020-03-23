# ZoomUs::InlineResponse20045

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tsp_provider** | **String** | Telephony Service Provider. | [optional] 
**enable** | **BOOLEAN** | Enable Telephony Service Provider for account users. | [optional] 
**dial_in_numbers** | [**Array&lt;InlineResponse20045DialInNumbers&gt;**](InlineResponse20045DialInNumbers.md) |  | [optional] 
**tsp_enabled** | **BOOLEAN** | Enable TSP feature for account. This has to be enabled to use any other tsp settings/features. | [optional] 
**master_account_setting_extended** | **BOOLEAN** | For master account, extend its TSP setting to all sub accounts. For sub account, extend TSP setting from master account. | [optional] 
**modify_credential_forbidden** | **BOOLEAN** | Control restriction on account users being able to modify their TSP credentials. | [optional] 
**dial_in_number_unrestricted** | **BOOLEAN** | Control restriction on account users adding a TSP number outside of account&#39;s dial in numbers. | [optional] 
**tsp_bridge** | **String** | Telephony bridge zone | [optional] 


