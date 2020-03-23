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
  class RoomsAccount
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Zoom Room Account Profile
    # Get details on the account profile of a Zoom Room. This information can only by accessed either by the Zoom Room Account Owner or a user with Zoom Rooms admin permission. To get information on an individual Room Profile, use [Get Zoom Room Profile API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/getzrprofile) instead.  **Prerequisites:**<br> * Zoom account owner or Zoom Rooms admin permissions<br>  **Scopes:** `room:read:admin`<br>
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20075]
    def get_zr_account_profile(opts = {})
      data, _status_code, _headers = get_zr_account_profile_with_http_info(opts)
      data
    end

    # Get Zoom Room Account Profile
    # Get details on the account profile of a Zoom Room. This information can only by accessed either by the Zoom Room Account Owner or a user with Zoom Rooms admin permission. To get information on an individual Room Profile, use [Get Zoom Room Profile API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/getzrprofile) instead.  **Prerequisites:**&lt;br&gt; * Zoom account owner or Zoom Rooms admin permissions&lt;br&gt;  **Scopes:** &#x60;room:read:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20075, Fixnum, Hash)>] InlineResponse20075 data, response status code and response headers
    def get_zr_account_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsAccountApi.get_zr_account_profile ...'
      end
      # resource path
      local_var_path = '/rooms/account_profile'

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
      post_body = nil
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20075')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsAccountApi#get_zr_account_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Zoom Room Account Settings
    # Get details on Account Settings of a Zoom Room. With this API, you can view either the **Account Meeting Settings** or the **Alert Settings** (Client Alert Settings and Notfication Settings) of the Zoom Rooms account. By default, only **Account Meeting Settings** are returned. To view only **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter.<br><br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:read:admin`<br><br>
    # @param setting_type The type of setting that you would like to retrieve.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_zr_account_settings(setting_type, opts = {})
      data, _status_code, _headers = get_zr_account_settings_with_http_info(setting_type, opts)
      data
    end

    # Get Zoom Room Account Settings
    # Get details on Account Settings of a Zoom Room. With this API, you can view either the **Account Meeting Settings** or the **Alert Settings** (Client Alert Settings and Notfication Settings) of the Zoom Rooms account. By default, only **Account Meeting Settings** are returned. To view only **Alert Settings**, specify &#x60;alert&#x60; as the value of the &#x60;setting_type&#x60; query parameter.&lt;br&gt;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.&lt;br&gt; **Scopes:** &#x60;room:read:admin&#x60;&lt;br&gt;&lt;br&gt;
    # @param setting_type The type of setting that you would like to retrieve.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_zr_account_settings_with_http_info(setting_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsAccountApi.get_zr_account_settings ...'
      end
      # verify the required parameter 'setting_type' is set
      if @api_client.config.client_side_validation && setting_type.nil?
        fail ArgumentError, "Missing the required parameter 'setting_type' when calling RoomsAccountApi.get_zr_account_settings"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['meeting', 'alert'].include?(setting_type)
        fail ArgumentError, "invalid value for 'setting_type', must be one of meeting, alert"
      end
      # resource path
      local_var_path = '/rooms/account_settings'

      # query parameters
      query_params = {}
      query_params[:'setting_type'] = setting_type

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsAccountApi#get_zr_account_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Zoom Room Account Settings
    # Update account settings applied for Zoom Rooms in a Zoom account. With this API, you can update either the **Account Meeting Settings** or the **Alert Settings** (Client Alert Settings and Notfication Settings) of the Zoom Rooms account by specifying the required setting type in the `setting_type` parameter. To update only **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter and to update only **Account Meeting Settings**, specify `meeting` as the value of the `setting_type` query parameter.<br><br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:write:admin`<br>
    # @param setting_type The type of setting that you would like to update.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account.
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body
    # @return [Object]
    def update_zoom_room_acc_settings(setting_type, opts = {})
      data, _status_code, _headers = update_zoom_room_acc_settings_with_http_info(setting_type, opts)
      data
    end

    # Update Zoom Room Account Settings
    # Update account settings applied for Zoom Rooms in a Zoom account. With this API, you can update either the **Account Meeting Settings** or the **Alert Settings** (Client Alert Settings and Notfication Settings) of the Zoom Rooms account by specifying the required setting type in the &#x60;setting_type&#x60; parameter. To update only **Alert Settings**, specify &#x60;alert&#x60; as the value of the &#x60;setting_type&#x60; query parameter and to update only **Account Meeting Settings**, specify &#x60;meeting&#x60; as the value of the &#x60;setting_type&#x60; query parameter.&lt;br&gt;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.&lt;br&gt; **Scopes:** &#x60;room:write:admin&#x60;&lt;br&gt;
    # @param setting_type The type of setting that you would like to update.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account.
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_zoom_room_acc_settings_with_http_info(setting_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsAccountApi.update_zoom_room_acc_settings ...'
      end
      # verify the required parameter 'setting_type' is set
      if @api_client.config.client_side_validation && setting_type.nil?
        fail ArgumentError, "Missing the required parameter 'setting_type' when calling RoomsAccountApi.update_zoom_room_acc_settings"
      end
      # resource path
      local_var_path = '/rooms/account_settings'

      # query parameters
      query_params = {}
      query_params[:'setting_type'] = setting_type

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsAccountApi#update_zoom_room_acc_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Zoom Room Account Profile
    # Update information on the account profile of a Zoom Room. This information can only by accessed either by the Zoom Room Account Owner or a user with Zoom Rooms admin permission. To update information on an individual Room Profile, use [Update Zoom Room Profile API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/updatezrprofile) instead.  **Prerequisites:**<br> * Zoom account owner or Zoom Rooms admin permissions<br>  **Scopes:** `room:write:admin`<br>
    # @param [Hash] opts the optional parameters
    # @option opts [Body55] :body
    # @return [Object]
    def update_zr_acc_profile(opts = {})
      data, _status_code, _headers = update_zr_acc_profile_with_http_info(opts)
      data
    end

    # Update Zoom Room Account Profile
    # Update information on the account profile of a Zoom Room. This information can only by accessed either by the Zoom Room Account Owner or a user with Zoom Rooms admin permission. To update information on an individual Room Profile, use [Update Zoom Room Profile API](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/updatezrprofile) instead.  **Prerequisites:**&lt;br&gt; * Zoom account owner or Zoom Rooms admin permissions&lt;br&gt;  **Scopes:** &#x60;room:write:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Body55] :body
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_zr_acc_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsAccountApi.update_zr_acc_profile ...'
      end
      # resource path
      local_var_path = '/rooms/account_profile'

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
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsAccountApi#update_zr_acc_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
