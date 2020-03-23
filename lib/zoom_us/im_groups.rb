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
  class IMGroups
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve an IM Directory Group
    # Retrieve an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.<br><br> Scopes: `imgroup:read:admin`<br>
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20019]
    def im_group(group_id, opts = {})
      data, _status_code, _headers = im_group_with_http_info(group_id, opts)
      data
    end

    # Retrieve an IM Directory Group
    # Retrieve an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imgroup:read:admin&#x60;&lt;br&gt;
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def im_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMGroupsApi.im_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling IMGroupsApi.im_group"
      end
      # resource path
      local_var_path = '/im/groups/{groupId}'.sub('{' + 'groupId' + '}', group_id.to_s)

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
        :return_type => 'InlineResponse20019')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMGroupsApi#im_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create an IM Directory Group
    # Create an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.<br><br> **Scopes**: `imgroup:write:admin`<br>
    # @param body
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def im_group_create(body, opts = {})
      im_group_create_with_http_info(body, opts)
      nil
    end

    # Create an IM Directory Group
    # Create an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; **Scopes**: &#x60;imgroup:write:admin&#x60;&lt;br&gt;
    # @param body
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def im_group_create_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMGroupsApi.im_group_create ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IMGroupsApi.im_group_create"
      end
      # resource path
      local_var_path = '/im/groups'

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMGroupsApi#im_group_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an IM Directory Group
    # Delete an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.<br><br> Scopes: `imgroup:write:admin`<br>
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def im_group_delete(group_id, opts = {})
      im_group_delete_with_http_info(group_id, opts)
      nil
    end

    # Delete an IM Directory Group
    # Delete an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imgroup:write:admin&#x60;&lt;br&gt;
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def im_group_delete_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMGroupsApi.im_group_delete ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling IMGroupsApi.im_group_delete"
      end
      # resource path
      local_var_path = '/im/groups/{groupId}'.sub('{' + 'groupId' + '}', group_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMGroupsApi#im_group_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List IM Directory Group Members
    # List the members of an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management).<br><br> **Scope:** `imgroup:read:admin`<br>
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records returned within a single API call. (default to 30)
    # @option opts [Integer] :page_number The current page number of returned records. (default to 1)
    # @return [GroupMemberList]
    def im_group_members(group_id, opts = {})
      data, _status_code, _headers = im_group_members_with_http_info(group_id, opts)
      data
    end

    # List IM Directory Group Members
    # List the members of an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management).&lt;br&gt;&lt;br&gt; **Scope:** &#x60;imgroup:read:admin&#x60;&lt;br&gt;
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records returned within a single API call.
    # @option opts [Integer] :page_number The current page number of returned records.
    # @return [Array<(GroupMemberList, Fixnum, Hash)>] GroupMemberList data, response status code and response headers
    def im_group_members_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMGroupsApi.im_group_members ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling IMGroupsApi.im_group_members"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 300
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling IMGroupsApi.im_group_members, must be smaller than or equal to 300.'
      end

      # resource path
      local_var_path = '/im/groups/{groupId}/members'.sub('{' + 'groupId' + '}', group_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page_number'] = opts[:'page_number'] if !opts[:'page_number'].nil?

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
        :return_type => 'GroupMemberList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMGroupsApi#im_group_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add IM Directory Group Members
    # Add members to an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under an account.<br><br> **Scope:** `imgroup:write:admin`<br>
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param body
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def im_group_members_create(group_id, body, opts = {})
      im_group_members_create_with_http_info(group_id, body, opts)
      nil
    end

    # Add IM Directory Group Members
    # Add members to an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under an account.&lt;br&gt;&lt;br&gt; **Scope:** &#x60;imgroup:write:admin&#x60;&lt;br&gt;
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param body
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def im_group_members_create_with_http_info(group_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMGroupsApi.im_group_members_create ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling IMGroupsApi.im_group_members_create"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IMGroupsApi.im_group_members_create"
      end
      # resource path
      local_var_path = '/im/groups/{groupId}/members'.sub('{' + 'groupId' + '}', group_id.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMGroupsApi#im_group_members_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete an IM Directory Group Member
    # Delete a member from an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under an account.<br><br> Scopes: `imgroup:write:admin`<br>
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param member_id The member ID.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def im_group_members_delete(group_id, member_id, opts = {})
      im_group_members_delete_with_http_info(group_id, member_id, opts)
      nil
    end

    # Delete an IM Directory Group Member
    # Delete a member from an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under an account.&lt;br&gt;&lt;br&gt; Scopes: &#x60;imgroup:write:admin&#x60;&lt;br&gt;
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param member_id The member ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def im_group_members_delete_with_http_info(group_id, member_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMGroupsApi.im_group_members_delete ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling IMGroupsApi.im_group_members_delete"
      end
      # verify the required parameter 'member_id' is set
      if @api_client.config.client_side_validation && member_id.nil?
        fail ArgumentError, "Missing the required parameter 'member_id' when calling IMGroupsApi.im_group_members_delete"
      end
      # resource path
      local_var_path = '/im/groups/{groupId}/members/{memberId}'.sub('{' + 'groupId' + '}', group_id.to_s).sub('{' + 'memberId' + '}', member_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMGroupsApi#im_group_members_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update an IM Directory Group
    # Update an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.<br><br> **Scopes**: `imgroup:write:admin`<br>
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param body
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def im_group_update(group_id, body, opts = {})
      im_group_update_with_http_info(group_id, body, opts)
      nil
    end

    # Update an IM Directory Group
    # Update an [IM directory group](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management) under your account.&lt;br&gt;&lt;br&gt; **Scopes**: &#x60;imgroup:write:admin&#x60;&lt;br&gt;
    # @param group_id The group ID.&lt;br&gt; Can be retrieved by calling [GET /groups](https://marketplace.zoom.us/docs/api-reference/zoom-api/groups/groups).
    # @param body
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def im_group_update_with_http_info(group_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMGroupsApi.im_group_update ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling IMGroupsApi.im_group_update"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IMGroupsApi.im_group_update"
      end
      # resource path
      local_var_path = '/im/groups/{groupId}'.sub('{' + 'groupId' + '}', group_id.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['OAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMGroupsApi#im_group_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List IM Directory Groups
    # List [IM directory groups](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management).<br><br> **Scopes**: `imgroup:read:admin`<br>
    # @param [Hash] opts the optional parameters
    # @return [IMGroupList]
    def im_groups(opts = {})
      data, _status_code, _headers = im_groups_with_http_info(opts)
      data
    end

    # List IM Directory Groups
    # List [IM directory groups](https://support.zoom.us/hc/en-us/articles/203749815-IM-Management).&lt;br&gt;&lt;br&gt; **Scopes**: &#x60;imgroup:read:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(IMGroupList, Fixnum, Hash)>] IMGroupList data, response status code and response headers
    def im_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IMGroupsApi.im_groups ...'
      end
      # resource path
      local_var_path = '/im/groups'

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
        :return_type => 'IMGroupList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IMGroupsApi#im_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
