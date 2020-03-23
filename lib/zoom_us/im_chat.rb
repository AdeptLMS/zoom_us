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
  class IMChat
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve IM Chat Messages
    # Retrieve IM chat messages for a specified period of time. <aside>Note: This API only supports oauth2.</aside><br><br>  **Scopes:** `imchat:read`<br>  <br>  <p style=\"background-color:#ffffcc;\"><strong>API End of Life:</strong> This API will no longer be supported after April, 2020. <a href=\"https://marketplace.zoom.us/docs/deprecated-scopes\">Learn more</a>.</p><br>
    # @param session_id IM chat session ID.
    # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
    # @param to End date.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records returned within a single API call. (default to 30)
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @return [InlineResponse20021]
    def im_chat_messages(session_id, from, to, opts = {})
      data, _status_code, _headers = im_chat_messages_with_http_info(session_id, from, to, opts)
      data
    end

    # Retrieve IM Chat Messages
    # Retrieve IM chat messages for a specified period of time. &lt;aside&gt;Note: This API only supports oauth2.&lt;/aside&gt;&lt;br&gt;&lt;br&gt;  **Scopes:** &#x60;imchat:read&#x60;&lt;br&gt;  &lt;br&gt;  &lt;p style&#x3D;\&quot;background-color:#ffffcc;\&quot;&gt;&lt;strong&gt;API End of Life:&lt;/strong&gt; This API will no longer be supported after April, 2020. &lt;a href&#x3D;\&quot;https://marketplace.zoom.us/docs/deprecated-scopes\&quot;&gt;Learn more&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;
    # @param session_id IM chat session ID.
    # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
    # @param to End date.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records returned within a single API call.
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @return [Array<(InlineResponse20021, Fixnum, Hash)>] InlineResponse20021 data, response status code and response headers
    def im_chat_messages_with_http_info(session_id, from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMChatApi.im_chat_messages ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling IMChatApi.im_chat_messages"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling IMChatApi.im_chat_messages"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling IMChatApi.im_chat_messages"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 300
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling IMChatApi.im_chat_messages, must be smaller than or equal to 300.'
      end

      # resource path
      local_var_path = '/im/chat/sessions/{sessionId}'.sub('{' + 'sessionId' + '}', session_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'from'] = from
      query_params[:'to'] = to
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page_token'] = opts[:'next_page_token'] if !opts[:'next_page_token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20021')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMChatApi#im_chat_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get IM Chat Sessions
    # Retrieve IM Chat sessions for a specified period of time. <aside>Note: This API only supports Oauth2.</aside><br>  <p style=\"background-color:#ffffcc;\"><strong>API End of Life:</strong> This API will no longer be supported after April, 2020. <a href=\"https://marketplace.zoom.us/docs/deprecated-scopes\">Learn more</a>.</p><br>   **Scopes:** `imchat:read, imchat:read:admin`<br>
    # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
    # @param to End date.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records returned within a single API call. (default to 30)
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @return [InlineResponse20020]
    def im_chat_sessions(from, to, opts = {})
      data, _status_code, _headers = im_chat_sessions_with_http_info(from, to, opts)
      data
    end

    # Get IM Chat Sessions
    # Retrieve IM Chat sessions for a specified period of time. &lt;aside&gt;Note: This API only supports Oauth2.&lt;/aside&gt;&lt;br&gt;  &lt;p style&#x3D;\&quot;background-color:#ffffcc;\&quot;&gt;&lt;strong&gt;API End of Life:&lt;/strong&gt; This API will no longer be supported after April, 2020. &lt;a href&#x3D;\&quot;https://marketplace.zoom.us/docs/deprecated-scopes\&quot;&gt;Learn more&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;   **Scopes:** &#x60;imchat:read, imchat:read:admin&#x60;&lt;br&gt;
    # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
    # @param to End date.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records returned within a single API call.
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def im_chat_sessions_with_http_info(from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMChatApi.im_chat_sessions ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling IMChatApi.im_chat_sessions"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling IMChatApi.im_chat_sessions"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 300
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling IMChatApi.im_chat_sessions, must be smaller than or equal to 300.'
      end

      # resource path
      local_var_path = '/im/chat/sessions'

      # query parameters
      query_params = {}
      query_params[:'from'] = from
      query_params[:'to'] = to
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page_token'] = opts[:'next_page_token'] if !opts[:'next_page_token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20020')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMChatApi#im_chat_sessions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get User’s IM Messages
    # Get IM Chat messages for a specified period of time. <aside>Note: This API only supports Oauth2.</aside><br><br> **Scopes:** `imchat:read` <p style=\"background-color:#ffffcc;\"><strong>API End of Life:</strong> This API will no longer be supported after April, 2020. <a href=\"https://marketplace.zoom.us/docs/deprecated-scopes\">Learn more</a>.</p><br>
    # @param user_id The user ID or email address.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :chat_user Chat user&#39;s ID or email address.
    # @option opts [String] :channel IM Channel&#39;s ID.
    # @option opts [String] :date IM message&#39;s query date time, format as yyyy-MM-dd.
    # @option opts [Integer] :page_size The number of records returned within a single API call. (default to 30)
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @return [InlineResponse20060]
    def listimmessages(user_id, opts = {})
      data, _status_code, _headers = listimmessages_with_http_info(user_id, opts)
      data
    end

    # Get User’s IM Messages
    # Get IM Chat messages for a specified period of time. &lt;aside&gt;Note: This API only supports Oauth2.&lt;/aside&gt;&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;imchat:read&#x60; &lt;p style&#x3D;\&quot;background-color:#ffffcc;\&quot;&gt;&lt;strong&gt;API End of Life:&lt;/strong&gt; This API will no longer be supported after April, 2020. &lt;a href&#x3D;\&quot;https://marketplace.zoom.us/docs/deprecated-scopes\&quot;&gt;Learn more&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;
    # @param user_id The user ID or email address.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :chat_user Chat user&#39;s ID or email address.
    # @option opts [String] :channel IM Channel&#39;s ID.
    # @option opts [String] :date IM message&#39;s query date time, format as yyyy-MM-dd.
    # @option opts [Integer] :page_size The number of records returned within a single API call.
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @return [Array<(InlineResponse20060, Fixnum, Hash)>] InlineResponse20060 data, response status code and response headers
    def listimmessages_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMChatApi.listimmessages ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling IMChatApi.listimmessages"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling IMChatApi.listimmessages, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling IMChatApi.listimmessages, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/im/users/{userId}/chat/messages'.sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'chat_user'] = opts[:'chat_user'] if !opts[:'chat_user'].nil?
      query_params[:'channel'] = opts[:'channel'] if !opts[:'channel'].nil?
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page_token'] = opts[:'next_page_token'] if !opts[:'next_page_token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20060')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMChatApi#listimmessages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send IM messages
    # Send chat message to a user. <aside>Note: This API only supports OAuth 2.0.</aside><br><br>**Scope:** `imchat:write` <p style=\"background-color:#ffffcc;\"><strong>API End of Life:</strong> This API will no longer be supported after April, 2020. <a href=\"https://marketplace.zoom.us/docs/deprecated-scopes\">Learn more</a>.</p><br>
    # @param [Hash] opts the optional parameters
    # @option opts [Body44] :body
    # @option opts [String] :chat_user The email address (registered with Zoom) or the userId of the chat user.
    # @return [InlineResponse20122]
    def sendimmessages(opts = {})
      data, _status_code, _headers = sendimmessages_with_http_info(opts)
      data
    end

    # Send IM messages
    # Send chat message to a user. &lt;aside&gt;Note: This API only supports OAuth 2.0.&lt;/aside&gt;&lt;br&gt;&lt;br&gt;**Scope:** &#x60;imchat:write&#x60; &lt;p style&#x3D;\&quot;background-color:#ffffcc;\&quot;&gt;&lt;strong&gt;API End of Life:&lt;/strong&gt; This API will no longer be supported after April, 2020. &lt;a href&#x3D;\&quot;https://marketplace.zoom.us/docs/deprecated-scopes\&quot;&gt;Learn more&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Body44] :body
    # @option opts [String] :chat_user The email address (registered with Zoom) or the userId of the chat user.
    # @return [Array<(InlineResponse20122, Fixnum, Hash)>] InlineResponse20122 data, response status code and response headers
    def sendimmessages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMChatApi.sendimmessages ...'
      end
      # resource path
      local_var_path = '/im/users/me/chat/messages'

      # query parameters
      query_params = {}
      query_params[:'chat_user'] = opts[:'chat_user'] if !opts[:'chat_user'].nil?

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
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20122')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMChatApi#sendimmessages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
