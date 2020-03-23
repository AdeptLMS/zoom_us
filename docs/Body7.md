# ZoomUs::Body7

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the channel. | [optional] 
**type** | **Integer** | Type of the channel. The value can be one of the following:&lt;br&gt; &#x60;1&#x60;: Private channel. In this type of channel, members must be invited to join a channel.&lt;br&gt; &#x60;2&#x60;: Private channel with members that belong to one Zoom account. Members in this channel should be invited and the members should be from the same organization.&lt;br&gt; &#x60;3&#x60;: Public channel. Anyone can search for this channel and join the channel.&lt;br&gt; &#x60;4&#x60;: New chat. This is an instant channel which can be created by adding members to a new chat.  | [optional] 
**members** | [**Array&lt;ChatusersmechannelsMembers&gt;**](ChatusersmechannelsMembers.md) | Member(s) to include in the channel. A max of 5 members can be added to the channel at once with this API. | [optional] 


