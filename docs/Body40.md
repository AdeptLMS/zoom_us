# ZoomUs::Body40

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**robot_jid** | **String** | Robot JID created when enabling chatbot features on your marketplace app. | 
**account_id** | **String** | The AccountID of the Zoom account to which the message was sent. Retrieve this from the Chatbot request sent to your server as shown in the example [here]( https://marketplace.zoom.us/docs/guides/chatbots/sending-messages). | 
**content** | **Object** | JSON template describing how the edited message should be displayed for the user. For more information please see our [\&quot;Send Message\&quot; templates](https://marketplace.zoom.us/docs/guides/chatbots/sending-messages#example-request). | 
**user_jid** | **String** | **Optional**&lt;br&gt; The UserJID of the user on whose behalf the message is being sent. Use this field to prevent members of a channel from getting notifications that were set up by a user who has left the channel. | [optional] 
**is_markdown_support** | **BOOLEAN** | **Optional**&lt;br&gt; Enable or disable markdown parser to your chatbot message. Applies the markdown parser to your chatbot message if the value of this field is set to &#x60;true&#x60;.&lt;br&gt; To learn more, refer to the Chatbot message [markdown reference](https://marketplace.zoom.us/docs/guides/chatbots/customizing-messages/message-with-markdown). | [optional] 


