=begin
#Zoom API

#The Zoom API allows developers to safely and securely access information from Zoom. You can use this API to build private services or public applications on the [Zoom App Marketplace](http://marketplace.zoom.us). To learn how to get your credentials and create private/public applications, read our [Authorization Guide](https://marketplace.zoom.us/docs/guides/authorization/credentials). All endpoints are available via `https` and are located at `api.zoom.us/v2/`.  For instance you can list all users on an account via `https://api.zoom.us/v2/users/`.

OpenAPI spec version: 2.0.0
Contact: developersupport@zoom.us
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for ZoomUs::ContactsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContactsApi' do
  before do
    # run before each test
    @instance = ZoomUs::ContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactsApi' do
    it 'should create an instance of ContactsApi' do
      expect(@instance).to be_instance_of(ZoomUs::ContactsApi)
    end
  end

  # unit tests for get_user_contact
  # Get User&#39;s Contact Details
  # A user under an organization’s Zoom account has internal users listed under Company Contacts in the Zoom Client. A Zoom user can also add another Zoom user as a [contact](https://support.zoom.us/hc/en-us/articles/115004055706-Managing-Contacts). Call this API to get information on a specific contact of the Zoom user.  &lt;p style&#x3D;\&quot;background-color:#e1f5fe; color:#01579b; padding:8px\&quot;&gt; &lt;b&gt;Note: &lt;/b&gt;This API only supports &lt;b&gt;user-managed&lt;/b&gt; &lt;a href&#x3D;\&quot;https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\&quot;&gt;OAuth app&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;  **Scope**: &#x60;chat_contact:read&#x60;&lt;br&gt;  
  # @param contact_id The user&#39;s contact Id or email address. The contact can be either a company contact or an external contact.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :query_presence_status The presence status of the contact.  Include this query parameter with a value of &#x60;true&#x60; to get the presence status of the contact in the response.
  # @return [InlineResponse2009]
  describe 'get_user_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_contacts
  # List User&#39;s Contacts
  # A user under an organization’s Zoom account has internal users listed under Company Contacts in the Zoom Client. A Zoom user can also add another Zoom user as a [contact](https://support.zoom.us/hc/en-us/articles/115004055706-Managing-Contacts). Call this API to list all the contacts of a Zoom user. Zoom contacts are categorized into \&quot;company contacts\&quot; and \&quot;external contacts\&quot;. You must specify the contact type in the &#x60;type&#x60; query parameter. If you do not specify, by default, the type will be set as company contact.  &lt;p style&#x3D;\&quot;background-color:#e1f5fe; color:#01579b; padding:8px\&quot;&gt; &lt;b&gt;Note: &lt;/b&gt; This API only supports &lt;b&gt;user-managed&lt;/b&gt; &lt;a href&#x3D;\&quot;https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-oauth-app\&quot;&gt;OAuth app&lt;/a&gt;.&lt;/p&gt;&lt;br&gt;  **Scope**: &#x60;chat_contact:read&#x60;&lt;br&gt;  
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The type of contact. The value can be one of the following: &#x60;company&#x60;: Contacts from the user&#39;s organization. &#x60;external&#x60;: External contacts. 
  # @option opts [Integer] :page_size The number of records returned with a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse2008]
  describe 'get_user_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_company_contacts
  # Search Company Contacts
  # A user under an organization&#39;s Zoom account has internal users listed under Company Contacts in the Zoom Client. Use this API to search users that are in the company contacts of a Zoom account. Using the &#x60;search_key&#x60; query parameter, provide either first name, last name or the email address of the user that you would like to search for. Optionally, set &#x60;query_presence_status&#x60; to &#x60;true&#x60; in order to include the presence status of a contact. &lt;br&gt;&lt;br&gt;  **Scopes:** &#x60;contact:read:admin&#x60;, &#x60;contact:read&#x60;&lt;br&gt;  
  # @param search_key Provide the keyword - either first name, last name or email of the contact whom you have to search for.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query_presence_status Set &#x60;query_presence_status&#x60; to &#x60;true&#x60; in order to include the presence status of a contact in the response.
  # @option opts [Integer] :page_size The number of records to be returned with a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse2005]
  describe 'search_company_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
