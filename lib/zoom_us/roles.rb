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
  class Roles
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Assign a Role to Members
    # User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to [assign a role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control#h_748b6fd8-5057-4cf4-bbfd-787909c09db0) to members.  **Scopes:** `role:write:admin`<br>  <br> **Prerequisites:**<br> * A Pro or a higher plan.
    # @param role_id The role ID
    # @param body Role members
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20115]
    def add_role_members(role_id, body, opts = {})
      data, _status_code, _headers = add_role_members_with_http_info(role_id, body, opts)
      data
    end

    # Assign a Role to Members
    # User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to [assign a role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control#h_748b6fd8-5057-4cf4-bbfd-787909c09db0) to members.  **Scopes:** &#x60;role:write:admin&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:**&lt;br&gt; * A Pro or a higher plan.
    # @param role_id The role ID
    # @param body Role members
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20115, Fixnum, Hash)>] InlineResponse20115 data, response status code and response headers
    def add_role_members_with_http_info(role_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.add_role_members ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.add_role_members"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RolesApi.add_role_members"
      end
      # resource path
      local_var_path = '/roles/{roleId}/members'.sub('{' + 'roleId' + '}', role_id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'InlineResponse20115')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#add_role_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a Role
    # Each Zoom user automatically has a role which can either be owner, administrator, or a member.   **Pre-requisite:**<br> * Pro or higher plan. * For setting the initial role, you must be the Account Owner.<br> * For subsequent role management, you must be the Account Owner or user with role management permissions.<br> **Scopes:** `role:write:admin`<br>
    # @param [Hash] opts the optional parameters
    # @option opts [Body28] :body
    # @return [Object]
    def create_role(opts = {})
      data, _status_code, _headers = create_role_with_http_info(opts)
      data
    end

    # Create a Role
    # Each Zoom user automatically has a role which can either be owner, administrator, or a member.   **Pre-requisite:**&lt;br&gt; * Pro or higher plan. * For setting the initial role, you must be the Account Owner.&lt;br&gt; * For subsequent role management, you must be the Account Owner or user with role management permissions.&lt;br&gt; **Scopes:** &#x60;role:write:admin&#x60;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Body28] :body
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def create_role_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.create_role ...'
      end
      # resource path
      local_var_path = '/roles'

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#create_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Role
    # Each Zoom user automatically has a role which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list.  Use this API to delete a role.<br> **Pre-requisite:**<br> * A Pro or higher plan.<br> * For role management and updates, you must be the Account Owner or user with role management permissions.  **Scopes:** `role:write:admin`<br>
    # @param role_id Role Id.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_role(role_id, opts = {})
      delete_role_with_http_info(role_id, opts)
      nil
    end

    # Delete a Role
    # Each Zoom user automatically has a role which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list.  Use this API to delete a role.&lt;br&gt; **Pre-requisite:**&lt;br&gt; * A Pro or higher plan.&lt;br&gt; * For role management and updates, you must be the Account Owner or user with role management permissions.  **Scopes:** &#x60;role:write:admin&#x60;&lt;br&gt;
    # @param role_id Role Id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.delete_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.delete_role"
      end
      # resource path
      local_var_path = '/roles/{roleId}'.sub('{' + 'roleId' + '}', role_id.to_s)

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
        @api_client.config.logger.debug "API called: RolesApi#delete_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Role Information
    # Each Zoom user automatically has a role which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list of privileges.  Use this API to get information including specific privileges assigned to a [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control).<br> **Pre-requisite:**<br> * A Pro or higher plan.<br> * For role management and updates, you must be the Account Owner or user with role management permissions.  **Scopes:** `role:read:admin`<br>
    # @param role_id Role Id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20071]
    def get_role_information(role_id, opts = {})
      data, _status_code, _headers = get_role_information_with_http_info(role_id, opts)
      data
    end

    # Get Role Information
    # Each Zoom user automatically has a role which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list of privileges.  Use this API to get information including specific privileges assigned to a [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control).&lt;br&gt; **Pre-requisite:**&lt;br&gt; * A Pro or higher plan.&lt;br&gt; * For role management and updates, you must be the Account Owner or user with role management permissions.  **Scopes:** &#x60;role:read:admin&#x60;&lt;br&gt;
    # @param role_id Role Id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20071, Fixnum, Hash)>] InlineResponse20071 data, response status code and response headers
    def get_role_information_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.get_role_information ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.get_role_information"
      end
      # resource path
      local_var_path = '/roles/{roleId}'.sub('{' + 'roleId' + '}', role_id.to_s)

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
        :return_type => 'InlineResponse20071')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#get_role_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unassign a Member's Role
    # User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to unassign a user's role.  **Scope:** `role:write:admin`<br>  <br> **Prerequisites:**<br> * A Pro or a higher plan.
    # @param role_id The role ID
    # @param member_id Member&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def role_member_delete(role_id, member_id, opts = {})
      role_member_delete_with_http_info(role_id, member_id, opts)
      nil
    end

    # Unassign a Member&#39;s Role
    # User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to unassign a user&#39;s role.  **Scope:** &#x60;role:write:admin&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites:**&lt;br&gt; * A Pro or a higher plan.
    # @param role_id The role ID
    # @param member_id Member&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def role_member_delete_with_http_info(role_id, member_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.role_member_delete ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.role_member_delete"
      end
      # verify the required parameter 'member_id' is set
      if @api_client.config.client_side_validation && member_id.nil?
        fail ArgumentError, "Missing the required parameter 'member_id' when calling RolesApi.role_member_delete"
      end
      # resource path
      local_var_path = '/roles/{roleId}/members/{memberId}'.sub('{' + 'roleId' + '}', role_id.to_s).sub('{' + 'memberId' + '}', member_id.to_s)

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
        @api_client.config.logger.debug "API called: RolesApi#role_member_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Members in a Role
    # User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to list all the members that are assigned a specific role.  **Scope:** `role:read:admin`<br>  <br>**Prerequisites:**<br> * A Pro or a higher plan.
    # @param role_id The role ID
    # @param [Hash] opts the optional parameters
    # @return [RoleMembersList]
    def role_members(role_id, opts = {})
      data, _status_code, _headers = role_members_with_http_info(role_id, opts)
      data
    end

    # List Members in a Role
    # User [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) can have a set of permissions that allows access only to the pages a user needs to view or edit. Use this API to list all the members that are assigned a specific role.  **Scope:** &#x60;role:read:admin&#x60;&lt;br&gt;  &lt;br&gt;**Prerequisites:**&lt;br&gt; * A Pro or a higher plan.
    # @param role_id The role ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleMembersList, Fixnum, Hash)>] RoleMembersList data, response status code and response headers
    def role_members_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.role_members ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.role_members"
      end
      # resource path
      local_var_path = '/roles/{roleId}/members'.sub('{' + 'roleId' + '}', role_id.to_s)

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
        :return_type => 'RoleMembersList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#role_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Roles
    # List [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) on your account  **Scopes:** `role:read:admin`<br>  <br> **Prerequisites** : *  Pro or higher plan.  *  For setting the initial role, you must be the Account Owner.  *  For subsequent role management, you must be the Account Owner or user with role management permissions.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def roles(opts = {})
      data, _status_code, _headers = roles_with_http_info(opts)
      data
    end

    # List Roles
    # List [roles](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) on your account  **Scopes:** &#x60;role:read:admin&#x60;&lt;br&gt;  &lt;br&gt; **Prerequisites** : *  Pro or higher plan.  *  For setting the initial role, you must be the Account Owner.  *  For subsequent role management, you must be the Account Owner or user with role management permissions.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.roles ...'
      end
      # resource path
      local_var_path = '/roles'

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RolesApi#roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Role Information
    # Each Zoom user automatically has a [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list.  Use this API to change the privileges, name and description of a specific role.<br> **Pre-requisite:**<br> * A Pro or higher plan.<br> * For role management and updates, you must be the Account Owner or user with role management permissions.<br>**Scopes:** `role:write:admin`<br>
    # @param role_id Role Id
    # @param [Hash] opts the optional parameters
    # @option opts [Body52] :body
    # @return [Object]
    def update_role(role_id, opts = {})
      data, _status_code, _headers = update_role_with_http_info(role_id, opts)
      data
    end

    # Update Role Information
    # Each Zoom user automatically has a [role](https://support.zoom.us/hc/en-us/articles/115001078646-Role-Based-Access-Control) which can either be owner, administrator, or a member. Account Owners and users with edit privileges for Role management can add customized roles with a list.  Use this API to change the privileges, name and description of a specific role.&lt;br&gt; **Pre-requisite:**&lt;br&gt; * A Pro or higher plan.&lt;br&gt; * For role management and updates, you must be the Account Owner or user with role management permissions.&lt;br&gt;**Scopes:** &#x60;role:write:admin&#x60;&lt;br&gt;
    # @param role_id Role Id
    # @param [Hash] opts the optional parameters
    # @option opts [Body52] :body
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_role_with_http_info(role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RolesApi.update_role ...'
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling RolesApi.update_role"
      end
      # resource path
      local_var_path = '/roles/{roleId}'.sub('{' + 'roleId' + '}', role_id.to_s)

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
        @api_client.config.logger.debug "API called: RolesApi#update_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
