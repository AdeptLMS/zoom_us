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
  class Rooms
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a Zoom Room
    # Use this API to [add a Zoom Room](https://support.zoom.us/hc/en-us/articles/202822279-Add-Zoom-Rooms-on-Web-Portal) to a Zoom account.<br><br> **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:write:admin`<br>
    # @param [Hash] opts the optional parameters
    # @option opts [Body2] :body
    # @return [InlineResponse201]
    def add_a_room(opts = {})
      data, _status_code, _headers = add_a_room_with_http_info(opts)
      data
    end

    # Add a Zoom Room
    # Use this API to [add a Zoom Room](https://support.zoom.us/hc/en-us/articles/202822279-Add-Zoom-Rooms-on-Web-Portal) to a Zoom account.&lt;br&gt;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.&lt;br&gt; **Scopes**: &#x60;room:write:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Body2] :body
    # @return [Array<(InlineResponse201, Fixnum, Hash)>] InlineResponse201 data, response status code and response headers
    def add_a_room_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.add_a_room ...'
      end
      # resource path
      local_var_path = '/rooms'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse201')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsApi#add_a_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Change a Zoom Room's Location
    # An account owner of a Zoom account can establish a [Zoom Rooms Location Hierarchy](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) to better organize Zoom Rooms spread accress various location. The location can be structured in a hierarchy with Country being the top-level location, followed by city, campus, building, and floor. Use this API to assign a new location for a Zoom Room. Note that the Zoom Room can be assigned only to the lowest level location available in the hierarchy. **Prerequisite:**<br> * Account owner or admin permission * Zoom Rooms version 4.0 or higher<br> **Scopes:** `room:write:admin`<br>
    # @param room_id Unique Identifier of the Zoom Room.
    # @param [Hash] opts the optional parameters
    # @option opts [Body64] :body
    # @return [Object]
    def change_zr_location(room_id, opts = {})
      data, _status_code, _headers = change_zr_location_with_http_info(room_id, opts)
      data
    end

    # Change a Zoom Room&#39;s Location
    # An account owner of a Zoom account can establish a [Zoom Rooms Location Hierarchy](https://support.zoom.us/hc/en-us/articles/115000342983-Zoom-Rooms-Location-Hierarchy) to better organize Zoom Rooms spread accress various location. The location can be structured in a hierarchy with Country being the top-level location, followed by city, campus, building, and floor. Use this API to assign a new location for a Zoom Room. Note that the Zoom Room can be assigned only to the lowest level location available in the hierarchy. **Prerequisite:**&lt;br&gt; * Account owner or admin permission * Zoom Rooms version 4.0 or higher&lt;br&gt; **Scopes:** &#x60;room:write:admin&#x60;&lt;br&gt;
    # @param room_id Unique Identifier of the Zoom Room.
    # @param [Hash] opts the optional parameters
    # @option opts [Body64] :body
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def change_zr_location_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.change_zr_location ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomsApi.change_zr_location"
      end
      # resource path
      local_var_path = '/rooms/{roomId}/location'.sub('{' + 'roomId' + '}', room_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsApi#change_zr_location\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Zoom Room
    # [Remove](https://support.zoom.us/hc/en-us/articles/360033432032-Zoom-Room-Device-Profiles#h_e55b2092-c418-4b02-819f-44de51448900) a specific Zoom Room profile from a Zoom account.<br><br> **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:write:admin`<br>
    # @param room_id Unique Identifier of a Zoom Room.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_a_zoom_room(room_id, opts = {})
      data, _status_code, _headers = delete_a_zoom_room_with_http_info(room_id, opts)
      data
    end

    # Delete a Zoom Room
    # [Remove](https://support.zoom.us/hc/en-us/articles/360033432032-Zoom-Room-Device-Profiles#h_e55b2092-c418-4b02-819f-44de51448900) a specific Zoom Room profile from a Zoom account.&lt;br&gt;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.&lt;br&gt; **Scopes**: &#x60;room:write:admin&#x60;&lt;br&gt;
    # @param room_id Unique Identifier of a Zoom Room.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def delete_a_zoom_room_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.delete_a_zoom_room ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomsApi.delete_a_zoom_room"
      end
      # resource path
      local_var_path = '/rooms/{roomId}'.sub('{' + 'roomId' + '}', room_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsApi#delete_a_zoom_room\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Zoom Room Profile
    #  Zoom Rooms is a software-based room system that provides an integrated experience for audio conferencing, wireless screen sharing and video conferencing. Use this API to get detailed information on a specific Zoom Room in a Zoom account.  **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:read:admin`<br>
    # @param room_id Unique Identifier of the Zoom Room. This can be retrieved from the response of [List Zoom Rooms](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/listzoomrooms) API.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20080]
    def get_zr_profile(room_id, opts = {})
      data, _status_code, _headers = get_zr_profile_with_http_info(room_id, opts)
      data
    end

    # Get Zoom Room Profile
    #  Zoom Rooms is a software-based room system that provides an integrated experience for audio conferencing, wireless screen sharing and video conferencing. Use this API to get detailed information on a specific Zoom Room in a Zoom account.  **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.&lt;br&gt; **Scopes**: &#x60;room:read:admin&#x60;&lt;br&gt;
    # @param room_id Unique Identifier of the Zoom Room. This can be retrieved from the response of [List Zoom Rooms](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/listzoomrooms) API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20080, Fixnum, Hash)>] InlineResponse20080 data, response status code and response headers
    def get_zr_profile_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.get_zr_profile ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomsApi.get_zr_profile"
      end
      # resource path
      local_var_path = '/rooms/{roomId}'.sub('{' + 'roomId' + '}', room_id.to_s)

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
        :return_type => 'InlineResponse20080')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsApi#get_zr_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Zoom Room Settings
    # Get information on meeting or alert settings applied to a specific Zoom Room. By default, only **Meeting Settings** are returned. To view only **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter.<br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:read:admin`<br>
    # @param setting_type The type of setting that you would like to retrieve.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account.
    # @param room_id Unique identifier of the Zoom Room.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_zr_settings(setting_type, room_id, opts = {})
      data, _status_code, _headers = get_zr_settings_with_http_info(setting_type, room_id, opts)
      data
    end

    # Get Zoom Room Settings
    # Get information on meeting or alert settings applied to a specific Zoom Room. By default, only **Meeting Settings** are returned. To view only **Alert Settings**, specify &#x60;alert&#x60; as the value of the &#x60;setting_type&#x60; query parameter.&lt;br&gt; **Prerequisites:**&lt;br&gt; * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.&lt;br&gt; **Scopes:** &#x60;room:read:admin&#x60;&lt;br&gt;
    # @param setting_type The type of setting that you would like to retrieve.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account.
    # @param room_id Unique identifier of the Zoom Room.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_zr_settings_with_http_info(setting_type, room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.get_zr_settings ...'
      end
      # verify the required parameter 'setting_type' is set
      if @api_client.config.client_side_validation && setting_type.nil?
        fail ArgumentError, "Missing the required parameter 'setting_type' when calling RoomsApi.get_zr_settings"
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomsApi.get_zr_settings"
      end
      # resource path
      local_var_path = '/rooms/{roomId}/settings'.sub('{' + 'roomId' + '}', room_id.to_s)

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
        @api_client.config.logger.debug "API called: RoomsApi#get_zr_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Zoom Rooms
    # Zoom Rooms is a software-based room system that provides an integrated experience for audio conferencing, wireless screen sharing and video conferencing. Use this API to list all the existing [Zoom Rooms](https://support.zoom.us/hc/en-us/articles/207483343-Getting-Started-with-Zoom-Rooms) in a Zoom account.<br><br> **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:read:admin`<br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status The status of the Zoom Room.
    # @option opts [String] :type Type of the Zoom Rooms.
    # @option opts [BOOLEAN] :unassigned_rooms Use this query parameter with a value of &#x60;true&#x60; if you would like to see Zoom Rooms in your account that have not been assigned to anyone yet. (default to false)
    # @option opts [Integer] :page_size The number of records returned within a single API call. (default to 30)
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @option opts [String] :location_id Parent location ID of the Zoom Room.
    # @return [InlineResponse2002]
    def list_zoom_rooms(opts = {})
      data, _status_code, _headers = list_zoom_rooms_with_http_info(opts)
      data
    end

    # List Zoom Rooms
    # Zoom Rooms is a software-based room system that provides an integrated experience for audio conferencing, wireless screen sharing and video conferencing. Use this API to list all the existing [Zoom Rooms](https://support.zoom.us/hc/en-us/articles/207483343-Getting-Started-with-Zoom-Rooms) in a Zoom account.&lt;br&gt;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.&lt;br&gt; **Scopes**: &#x60;room:read:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status The status of the Zoom Room.
    # @option opts [String] :type Type of the Zoom Rooms.
    # @option opts [BOOLEAN] :unassigned_rooms Use this query parameter with a value of &#x60;true&#x60; if you would like to see Zoom Rooms in your account that have not been assigned to anyone yet.
    # @option opts [Integer] :page_size The number of records returned within a single API call.
    # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
    # @option opts [String] :location_id Parent location ID of the Zoom Room.
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def list_zoom_rooms_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.list_zoom_rooms ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['Offline', 'Available', 'InMeeting', 'UnderConstruction'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of Offline, Available, InMeeting, UnderConstruction'
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['ZoomRoom', 'SchedulingDisplayOnly', 'DigitalSignageOnly'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of ZoomRoom, SchedulingDisplayOnly, DigitalSignageOnly'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 300
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling RoomsApi.list_zoom_rooms, must be smaller than or equal to 300.'
      end

      # resource path
      local_var_path = '/rooms'

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'unassigned_rooms'] = opts[:'unassigned_rooms'] if !opts[:'unassigned_rooms'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'next_page_token'] = opts[:'next_page_token'] if !opts[:'next_page_token'].nil?
      query_params[:'location_id'] = opts[:'location_id'] if !opts[:'location_id'].nil?

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
        :return_type => 'InlineResponse2002')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsApi#list_zoom_rooms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Zoom Room Devices
    # List information about the devices that are being used for a specific [Zoom Room](https://support.zoom.us/hc/en-us/articles/207483343-Getting-Started-with-Zoom-Rooms) in an account.  **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> * Account owner or admin permissions. **Scopes**: `room:read:admin`<br>
    # @param room_id Unique Identifier of the Zoom Room. This can be retrieved from the response of [List Zoom Rooms](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/listzoomrooms) API.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20081]
    def list_zr_devices(room_id, opts = {})
      data, _status_code, _headers = list_zr_devices_with_http_info(room_id, opts)
      data
    end

    # List Zoom Room Devices
    # List information about the devices that are being used for a specific [Zoom Room](https://support.zoom.us/hc/en-us/articles/207483343-Getting-Started-with-Zoom-Rooms) in an account.  **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.&lt;br&gt; * Account owner or admin permissions. **Scopes**: &#x60;room:read:admin&#x60;&lt;br&gt;
    # @param room_id Unique Identifier of the Zoom Room. This can be retrieved from the response of [List Zoom Rooms](https://marketplace.zoom.us/docs/api-reference/zoom-api/rooms/listzoomrooms) API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20081, Fixnum, Hash)>] InlineResponse20081 data, response status code and response headers
    def list_zr_devices_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.list_zr_devices ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomsApi.list_zr_devices"
      end
      # resource path
      local_var_path = '/rooms/{roomId}/devices'.sub('{' + 'roomId' + '}', room_id.to_s)

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
        :return_type => 'InlineResponse20081')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RoomsApi#list_zr_devices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Zoom Room Profile
    # Update basic information on a specific Zoom Room in a Zoom account.<br>  **Prerequisites:**<br> * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.<br> **Scopes**: `room:write:admin`<br>
    # @param room_id Unique Identifier of a Zoom Room.
    # @param [Hash] opts the optional parameters
    # @option opts [Body59] :body
    # @return [Object]
    def update_room_profile(room_id, opts = {})
      data, _status_code, _headers = update_room_profile_with_http_info(room_id, opts)
      data
    end

    # Update a Zoom Room Profile
    # Update basic information on a specific Zoom Room in a Zoom account.&lt;br&gt;  **Prerequisites:**&lt;br&gt; * Pro or a higher plan with [Zoom Room](https://zoom.us/zoomrooms) license.&lt;br&gt; **Scopes**: &#x60;room:write:admin&#x60;&lt;br&gt;
    # @param room_id Unique Identifier of a Zoom Room.
    # @param [Hash] opts the optional parameters
    # @option opts [Body59] :body
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_room_profile_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.update_room_profile ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomsApi.update_room_profile"
      end
      # resource path
      local_var_path = '/rooms/{roomId}'.sub('{' + 'roomId' + '}', room_id.to_s)

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
        @api_client.config.logger.debug "API called: RoomsApi#update_room_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Zoom Room Settings
    # Update either meeting or alert settings applied to a specific Zoom Room. To update **Alert Settings**, specify `alert` as the value of the `setting_type` query parameter. To update **Meeting Settings**, specify `meeting` as the value of the `setting_type` query parameter.<br> **Prerequisites:**<br> * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.<br> **Scopes:** `room:write:admin`<br>
    # @param room_id Unique Identifier of the Zoom Room.
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body
    # @option opts [String] :setting_type The type of setting that you would like to update.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account.
    # @return [Object]
    def update_zr_settings(room_id, opts = {})
      data, _status_code, _headers = update_zr_settings_with_http_info(room_id, opts)
      data
    end

    # Update Zoom Room Settings
    # Update either meeting or alert settings applied to a specific Zoom Room. To update **Alert Settings**, specify &#x60;alert&#x60; as the value of the &#x60;setting_type&#x60; query parameter. To update **Meeting Settings**, specify &#x60;meeting&#x60; as the value of the &#x60;setting_type&#x60; query parameter.&lt;br&gt; **Prerequisites:**&lt;br&gt; * Zoom Room licenses * Owner or Admin privileges on the Zoom Account.&lt;br&gt; **Scopes:** &#x60;room:write:admin&#x60;&lt;br&gt;
    # @param room_id Unique Identifier of the Zoom Room.
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body
    # @option opts [String] :setting_type The type of setting that you would like to update.&lt;br&gt; &#x60;alert&#x60;: Alert Settings applied on the Zoom Rooms Account.&lt;br&gt; &#x60;meeting&#x60;: Meeting settings of the Zoom Rooms Account.
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_zr_settings_with_http_info(room_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RoomsApi.update_zr_settings ...'
      end
      # verify the required parameter 'room_id' is set
      if @api_client.config.client_side_validation && room_id.nil?
        fail ArgumentError, "Missing the required parameter 'room_id' when calling RoomsApi.update_zr_settings"
      end
      # resource path
      local_var_path = '/rooms/{roomId}/settings'.sub('{' + 'roomId' + '}', room_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'setting_type'] = opts[:'setting_type'] if !opts[:'setting_type'].nil?

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
        @api_client.config.logger.debug "API called: RoomsApi#update_zr_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
