# ZoomUs::Body39

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**robot_jid** | **String** | Robot JID created when enabling chatbot features on your marketplace app. | 
**to_jid** | **String** | Unique JID of reciever. Can be a group or user. | 
**account_id** | **String** | Account ID of the authorized account. | 
**content** | **Object** | JSON template describing how the message should be displayed for the user. For more information please see our [\&quot;Send Message\&quot; templates](https://marketplace.zoom.us/docs/guides/chatbots/sending-messages#example-request). | 
**visible_to_user** | **String** | **Optional**&lt;br&gt;Allow a Chatbot to send a message to a group channel, but have only one designated person in that group channel see the message by providing the person&#39;s UserID in this field. | [optional] 
**user_jid** | **String** | **Optional**&lt;br&gt; The UserJID of the user on whose behalf the message is being sent. Use this field to prevent members of a channel from getting notifications that were set up by a user who has left the channel. | [optional] 
**is_markdown_support** | **BOOLEAN** | **Optional**&lt;br&gt; Applies the markdown parser to your chatbot message if the value of this field is set to &#x60;true&#x60;.&lt;br&gt; To learn more, refer to the Chatbot message [markdown reference](https://marketplace.zoom.us/docs/guides/chatbots/customizing-messages/message-with-markdown). | [optional] 


