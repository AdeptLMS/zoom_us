# ZoomUs::Body1

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | The name or IP address of your provider’s SIP domain. (example: CDC.WEB). | 
**register_server** | **String** | IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. | 
**transport_protocol** | **String** | Protocols supported by the SIP provider.&lt;br&gt; The value must be either &#x60;UDP&#x60;, &#x60;TCP&#x60;, &#x60;TLS&#x60;, &#x60;AUTO&#x60;. | [optional] 
**proxy_server** | **String** | IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server. | 
**register_server2** | **String** | IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. | 
**transport_protocol2** | **String** | Protocols supported by the SIP provider.&lt;br&gt; The value must be either &#x60;UDP&#x60;, &#x60;TCP&#x60;, &#x60;TLS&#x60;, &#x60;AUTO&#x60;. | [optional] 
**proxy_server2** | **String** | IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server. | 
**register_server3** | **String** | IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. | 
**transport_protocol3** | **String** | Protocols supported by the SIP provider.&lt;br&gt; The value must be either &#x60;UDP&#x60;, &#x60;TCP&#x60;, &#x60;TLS&#x60;, &#x60;AUTO&#x60;. | [optional] 
**proxy_server3** | **String** | IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server. | 
**registration_expire_time** | **Integer** | The number of minutes after which the SIP registration of the Zoom client user will expire, and the client will auto register to the SIP server. | [optional] 
**user_name** | **String** | The phone number associated with the user in the SIP account. | 
**password** | **String** | The password generated for the user in the SIP account. | 
**authorization_name** | **String** | Authorization name of the user  registered for SIP Phone. | 
**voice_mail** | **String** | The number to dial for checking voicemail. | 


