=begin
#Zoom API

#The Zoom API allows developers to safely and securely access information from Zoom. You can use this API to build private services or public applications on the [Zoom App Marketplace](http://marketplace.zoom.us). To learn how to get your credentials and create private/public applications, read our [Authorization Guide](https://marketplace.zoom.us/docs/guides/authorization/credentials). All endpoints are available via `https` and are located at `api.zoom.us/v2/`.  For instance you can list all users on an account via `https://api.zoom.us/v2/users/`.

OpenAPI spec version: 2.0.0
Contact: developersupport@zoom.us
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module ZoomUs
  class ChatbotMessages
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Chatbot Message
    # Delete a message that was sent by your chatbot app.   **Scopes:** `imchat:bot`<br>  **Authorization Flow**: Client Credentials Flow<br><br> To get authorized, make a POST request to `/oauth/token` endpoint with grant type as `client_credentials`. <br>Use `https://api.zoom.us/oauth/token?grant_type=client_credentials` as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. `Basic base64Encode({client_id}:{client_sceret})`<br><br> Next, use the token received (access_token) as a bearer token while making the DELETE /im/chat/messages/{message_id} request to delete a message.<br><br> Learn more about how to authotize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.
    # @param message_id
    # @param [Hash] opts the optional parameters
    # @option opts [Body41] :body
    # @return [InlineResponse20058]
    def delete_a_chatbot_message(message_id, opts = {})
      data, _status_code, _headers = delete_a_chatbot_message_with_http_info(message_id, opts)
      data
    end

    # Delete a Chatbot Message
    # Delete a message that was sent by your chatbot app.   **Scopes:** &#x60;imchat:bot&#x60;&lt;br&gt;  **Authorization Flow**: Client Credentials Flow&lt;br&gt;&lt;br&gt; To get authorized, make a POST request to &#x60;/oauth/token&#x60; endpoint with grant type as &#x60;client_credentials&#x60;. &lt;br&gt;Use &#x60;https://api.zoom.us/oauth/token?grant_type&#x3D;client_credentials&#x60; as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. &#x60;Basic base64Encode({client_id}:{client_sceret})&#x60;&lt;br&gt;&lt;br&gt; Next, use the token received (access_token) as a bearer token while making the DELETE /im/chat/messages/{message_id} request to delete a message.&lt;br&gt;&lt;br&gt; Learn more about how to authotize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.
    # @param message_id
    # @param [Hash] opts the optional parameters
    # @option opts [Body41] :body
    # @return [Array<(InlineResponse20058, Fixnum, Hash)>] InlineResponse20058 data, response status code and response headers
    def delete_a_chatbot_message_with_http_info(message_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChatbotMessagesApi.delete_a_chatbot_message ...'
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling ChatbotMessagesApi.delete_a_chatbot_message"
      end
      # resource path
      local_var_path = '/im/chat/messages/{message_id}'.sub('{' + 'message_id' + '}', message_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['Client Credentials']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20058')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatbotMessagesApi#delete_a_chatbot_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit a Chatbot Message
    # Edit a message that was [sent](https://marketplace.zoom.us/docs/api-reference/zoom-api/im-chat/sendchatbot) by your Chatbot app.<br> After sending a message using the Send Chatbot Message API, you must store the messageId returned in the response so that you can make edits to the associated message using this API.  **Scope:** `imchat:bot`<br><br> **Authorization Flow**: Client Credentials Flow<br><br> To get authorized, make a POST request to `/oauth/token` endpoint with grant type as `client_credentials`. <br>Use `https://api.zoom.us/oauth/token?grant_type=client_credentials` as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. `Basic base64Encode({client_id}:{client_sceret})`<br><br> Next, use the token received (access_token) as a bearer token while making the PUT /im/chat/messages/{message_id} request to edit a chatbot message.<br><br> Learn more about how to authotize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.
    # @param message_id Unique Identifier of the message that needs to be updated. This should be retrieved from the response of [Send Chatbot Message API](https://marketplace.zoom.us/docs/api-reference/zoom-api/im-chat/sendchatbot).
    # @param [Hash] opts the optional parameters
    # @option opts [Body40] :body
    # @return [InlineResponse20057]
    def edit_chatbot_message(message_id, opts = {})
      data, _status_code, _headers = edit_chatbot_message_with_http_info(message_id, opts)
      data
    end

    # Edit a Chatbot Message
    # Edit a message that was [sent](https://marketplace.zoom.us/docs/api-reference/zoom-api/im-chat/sendchatbot) by your Chatbot app.&lt;br&gt; After sending a message using the Send Chatbot Message API, you must store the messageId returned in the response so that you can make edits to the associated message using this API.  **Scope:** &#x60;imchat:bot&#x60;&lt;br&gt;&lt;br&gt; **Authorization Flow**: Client Credentials Flow&lt;br&gt;&lt;br&gt; To get authorized, make a POST request to &#x60;/oauth/token&#x60; endpoint with grant type as &#x60;client_credentials&#x60;. &lt;br&gt;Use &#x60;https://api.zoom.us/oauth/token?grant_type&#x3D;client_credentials&#x60; as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. &#x60;Basic base64Encode({client_id}:{client_sceret})&#x60;&lt;br&gt;&lt;br&gt; Next, use the token received (access_token) as a bearer token while making the PUT /im/chat/messages/{message_id} request to edit a chatbot message.&lt;br&gt;&lt;br&gt; Learn more about how to authotize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.
    # @param message_id Unique Identifier of the message that needs to be updated. This should be retrieved from the response of [Send Chatbot Message API](https://marketplace.zoom.us/docs/api-reference/zoom-api/im-chat/sendchatbot).
    # @param [Hash] opts the optional parameters
    # @option opts [Body40] :body
    # @return [Array<(InlineResponse20057, Fixnum, Hash)>] InlineResponse20057 data, response status code and response headers
    def edit_chatbot_message_with_http_info(message_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChatbotMessagesApi.edit_chatbot_message ...'
      end
      # verify the required parameter 'message_id' is set
      if @api_client.config.client_side_validation && message_id.nil?
        fail ArgumentError, "Missing the required parameter 'message_id' when calling ChatbotMessagesApi.edit_chatbot_message"
      end
      # resource path
      local_var_path = '/im/chat/messages/{message_id}'.sub('{' + 'message_id' + '}', message_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['Client Credentials']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20057')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatbotMessagesApi#edit_chatbot_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send Chatbot Messages
    # Send chatbot messages from your marketplace chatbot app.<br><br> **Scopes:** `imchat:bot`<br> **Authorization Flow**: Client Credentials Flow<br><br> To get authorized, make a POST request to `/oauth/token` endpoint with grant type as `client_credentials`. <br>Use `https://api.zoom.us/oauth/token?grant_type=client_credentials` as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. `Basic base64Encode({client_id}:{client_sceret})`<br><br> Next, use the token recieved (access_token) as a bearer token while making the POST /im/chat/messages request to send chatbot messages.<br><br> Learn more about how to authorize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.
    # @param [Hash] opts the optional parameters
    # @option opts [Body39] :body
    # @return [nil]
    def sendchatbot(opts = {})
      sendchatbot_with_http_info(opts)
      nil
    end

    # Send Chatbot Messages
    # Send chatbot messages from your marketplace chatbot app.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;imchat:bot&#x60;&lt;br&gt; **Authorization Flow**: Client Credentials Flow&lt;br&gt;&lt;br&gt; To get authorized, make a POST request to &#x60;/oauth/token&#x60; endpoint with grant type as &#x60;client_credentials&#x60;. &lt;br&gt;Use &#x60;https://api.zoom.us/oauth/token?grant_type&#x3D;client_credentials&#x60; as the endpoint for the request.  You will need to send your ClientID and Secret as a Basic base64 encoded AUthorization header. Ex. &#x60;Basic base64Encode({client_id}:{client_sceret})&#x60;&lt;br&gt;&lt;br&gt; Next, use the token recieved (access_token) as a bearer token while making the POST /im/chat/messages request to send chatbot messages.&lt;br&gt;&lt;br&gt; Learn more about how to authorize chatbots in the [Chatbot Authorization](https://marketplace.zoom.us/docs/guides/chatbots/authorization) guide.
    # @param [Hash] opts the optional parameters
    # @option opts [Body39] :body
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def sendchatbot_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChatbotMessagesApi.sendchatbot ...'
      end
      # resource path
      local_var_path = '/im/chat/messages'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['Client Credentials']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatbotMessagesApi#sendchatbot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
