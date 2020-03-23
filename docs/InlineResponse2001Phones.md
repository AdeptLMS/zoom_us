# ZoomUs::InlineResponse2001Phones

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique Identifier of the SIP Phone. | [optional] 
**user_email** | **String** | The email address of the user to associate with the SIP Phone. Can add [.win, .mac, .android, .ipad, .iphone, .linux, .pc, .mobile, .pad] at the end of the email (ex. user@test.com.mac) to add accounts for different platforms for the same user. | [optional] 
**domain** | **String** | The name or IP address of your provider’s SIP domain. (example: CDC.WEB).  | [optional] 
**register_server** | **String** | IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. | [optional] 
**transport_protocol** | **String** | Protocols supported by the SIP provider.&lt;br&gt; The value must be either &#x60;UDP&#x60;, &#x60;TCP&#x60;, &#x60;TLS&#x60;, &#x60;AUTO&#x60;. | [optional] 
**proxy_server** | **String** | IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server, or empty. | [optional] 
**register_server2** | **String** | IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. | [optional] 
**transport_protocol2** | **String** | Protocols supported by the SIP provider.&lt;br&gt; The value must be either &#x60;UDP&#x60;, &#x60;TCP&#x60;, &#x60;TLS&#x60;, &#x60;AUTO&#x60;. | [optional] 
**proxy_server2** | **String** | IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server, or empty. | [optional] 
**register_server3** | **String** | IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. | [optional] 
**transport_protocol3** | **String** | Protocols supported by the SIP provider.&lt;br&gt; The value must be either &#x60;UDP&#x60;, &#x60;TCP&#x60;, &#x60;TLS&#x60;, &#x60;AUTO&#x60;. | [optional] 
**proxy_server3** | **String** | IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server, or empty. | [optional] 
**registration_expire_time** | **Integer** | The number of minutes after which the SIP registration of the Zoom client user will expire, and the client will auto register to the SIP server.  | [optional] 
**user_name** | **String** | The phone number associated with the user in the SIP account.  | [optional] 
**password** | **String** | The password generated for the user in the SIP account.  | [optional] 
**authorization_name** | **String** | Authorization name of the user  registered for SIP Phone. | [optional] 
**voice_mail** | **String** | The number to dial for checking voicemail. | [optional] 


