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

# Unit tests for ZoomUs::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = ZoomUs::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(ZoomUs::UsersApi)
    end
  end

  # unit tests for switch_user_account
  # Switch a User&#39;s Account
  # Disassociate a user from one Account and move the user to another Account under the same Master Account.   With this API, a user under a Master Account or a Sub Account can be moved to another Sub Account within the same Master Account. To move a user from a Master Account to a Sub Account, use &#x60;me&#x60; as the value for &#x60;accountId&#x60;. In this scenario, \&quot;me\&quot; refers to the Account ID of the Master Account.   To move a user from one Sub Account to another Sub Account, provide the Sub Account&#39;s Account ID as the value for &#x60;accountId&#x60;.   **Prerequisites**: * The account should have Pro or a higher plan with Master Account option enabled. * The user whose account needs to be switched should not be an admin or an owner of that account. * The user should not have the same [managed domain](https://support.zoom.us/hc/en-us/articles/203395207-What-is-Managed-Domain-) as the account owner.  **Scope:** &#x60;user:master&#x60;&lt;br&gt;  
  # @param user_id 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Body54] :body 
  # @return [Object]
  describe 'switch_user_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user
  # Get a User
  # A Zoom account can have one or more users. Use this API to view information of a specific user on a Zoom account.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;user:read:admin&#x60; &#x60;user:read&#x60;&lt;br&gt;   &lt;p style&#x3D;\&quot;background-color:#e1f5fe; color:#01579b; padding:8px\&quot;&gt; &lt;b&gt;Note: &lt;/b&gt;If a user&#39;s status is pending, only &#x60;id&#x60; and &#x60;created_at&#x60; fields will be returned. The value of &#x60;created_at&#x60; will be the time at which the API call was made until the user activates their account.&lt;/p&gt;
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :login_type &#x60;0&#x60; - Facebook.&lt;br&gt;&#x60;1&#x60; - Google.&lt;br&gt;&#x60;99&#x60; - API.&lt;br&gt;&#x60;100&#x60; - Zoom.&lt;br&gt;&#x60;101&#x60; - SSO.
  # @return [InlineResponse20047]
  describe 'user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_assistant_create
  # Add Assistants
  # Assistants are the users to whom the current user has assigned [scheduling privilege](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege). These assistants can schedule meeting on behalf of the current user as well as manage and act as an alternative host for all meetings if the admin has enabled [Co-host option](https://zoom.us/account/setting) on the account.&lt;br&gt;Use this API to assign assistants to a user. &lt;br&gt; In the request body, provide either the User ID or the email address of the user.&lt;br&gt;&lt;br&gt; **Prerequisite**:  * The user as well as the assistant must have Licensed or an On-prem license. * Assistants must be under the current user&#39;s account.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;   
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param body User assistant.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20117]
  describe 'user_assistant_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_assistant_delete
  # Delete a User Assistant
  # Delete a specific assistant of a user. Assistants are the users to whom the current user has assigned [scheduling privilege](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege). These assistants can schedule meeting on behalf of the current user as well as manage and act as an alternative host for all meetings if the admin has enabled [Co-host option](https://zoom.us/account/setting) on the account.&lt;br&gt;&lt;br&gt; **Prerequisites**:  * The user as well as the assistant must have Licensed or an On-prem license. * Assistants must be under the current user&#39;s account.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;  
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param assistant_id Assistant ID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_assistant_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_assistants
  # List User Assistants
  # List a user&#39;s assistants.  Assistants are the users to whom the current user has assigned [scheduling privilege](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege). These assistants can schedule meeting on behalf of the current user as well as manage and act as an alternative host for all meetings if the admin has enabled [Co-host option](https://zoom.us/account/setting) on the account.&lt;br&gt;&lt;br&gt; **Prerequisites**: &lt;br&gt; * Current user as well as the assistant must have Licensed or an On-prem license. * Assistants must be under the current user&#39;s account.&lt;br&gt; **Scopes**: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;&lt;br&gt;  
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @return [UserAssistantsList]
  describe 'user_assistants test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_assistants_delete
  # Delete User Assistants
  # Delete all assistants of the current user.&lt;br&gt; Assistants are the users to whom the current user has assigned [scheduling privilege](https://support.zoom.us/hc/en-us/articles/201362803-Scheduling-Privilege). These assistants can schedule meeting on behalf of the current user as well as manage and act as an alternative host for all meetings if the admin has enabled [Co-host option](https://zoom.us/account/setting) on the account.&lt;br&gt; **Prerequisite**:  * The user as well as the assistant must have Licensed or an On-prem license. * Assistants must be under the current user&#39;s account.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;  
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_assistants_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_create
  # Create Users
  # A Zoom account can have one or more users. Use this API to add a new user to your account.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;&lt;br&gt;  
  # @param body User
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20116]
  describe 'user_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_delete
  # Delete User
  # Deleting a user permanently removes them and their data from Zoom. They will be able to create a new Zoom account with the same email address if they have access to it. An account owner or an account admin can transfer meetings, webinars and cloud recordings to another Zoom user before deleting, but if not transferred, they will be permanently deleted.&lt;br&gt;&lt;br&gt;  By default, this API disassociates (unlinks) a user from the associated account. The disassociation will give them their own basic, free Zoom account. It will not be associated with your account, and they will be able to purchase their own licenses. You can transfer the user&#39;s data (meetings, webinars and cloud recordings) to another user before disassociation.&lt;br&gt; To permanently delete a user, specify \&quot;delete\&quot; as the value of the &#x60;action&#x60; query parameter. **Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;&lt;br&gt;  
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :action Delete action options:&lt;br&gt;&#x60;disassociate&#x60; - Disassociate a user.&lt;br&gt;&#x60;delete&#x60;-  Permanently delete a user.&lt;br&gt;Note: To delete pending user in the account, use &#x60;disassociate&#x60;
  # @option opts [String] :transfer_email Transfer email.
  # @option opts [BOOLEAN] :transfer_meeting Transfer meeting.
  # @option opts [BOOLEAN] :transfer_webinar Transfer webinar.
  # @option opts [BOOLEAN] :transfer_recording Transfer recording.
  # @return [nil]
  describe 'user_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_email
  # Check a User Email
  # Verify if a user&#39;s email is registered with Zoom.&lt;br&gt;&lt;br&gt; &lt;p style&#x3D;\&quot;background-color:#ffffcc; color:#01579b; padding:8px\&quot;&gt; &lt;b&gt;Note: &lt;/b&gt;Starting November 17, 2019, the behavior of this API will change so that you will be able to successfully check to see if a user is a registered Zoom user only if the user is within your account. If you provide an email address of a user who is not in your account, the value of \&quot;existed_email\&quot; parameter will be \&quot;false\&quot; irrespective of whether or not the user is registered with Zoom. &lt;/p&gt;  **Scopes:** &#x60;user:read:admin&#x60; &#x60;user:read&#x60;   
  # @param email The email address to be verified.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20052]
  describe 'user_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_email_update
  # Update a User&#39;s Email
  # Change a user&#39;s [email address](https://support.zoom.us/hc/en-us/articles/201362563-How-Do-I-Change-the-Email-on-My-Account-) on a Zoom account that has managed domain set up.&lt;br&gt;If the Zoom Account in which the user belongs, has multiple [managed domains](https://support.zoom.us/hc/en-us/articles/203395207-What-is-Managed-Domain-), the email to be updated must match one of the managed domains.&lt;br&gt; **Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;&lt;br&gt;  **Prerequisite:**&lt;br&gt; * Managed domain must be enabled in the account. * The new email address should not already exist in Zoom.
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param body User email.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_email_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_password
  # Update a User&#39;s Password
  # Update the [password](https://support.zoom.us/hc/en-us/articles/206344385-Change-a-User-s-Password) of a user using which the user can login to Zoom.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;&lt;br&gt;   **Prerequisites:**&lt;br&gt; * Owner or admin of the Zoom account.
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param body User password.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_password test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_permission
  # Get User Permissions
  # Users can be assigned a set of permissions that allows them to access only the pages/information that a user needs to view or edit.&lt;br&gt;  Use this API to get permissions that have been granted to the user.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;user:read:admin&#x60; &#x60;user:read&#x60;&lt;br&gt;  
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20048]
  describe 'user_permission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_picture
  # Upload a User&#39;s Profile Picture
  # Upload a user&#39;s profile picture.&lt;br&gt;&lt;br&gt;  Provide &#x60;multipart/form-data&#x60; as the value of the &#x60;content-type&#x60; header for this request.   **Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;&lt;br&gt;  
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param pic_file   The file&#39;s path. 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_picture test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_scheduler_delete
  # Delete a Scheduler
  # Delete a Scheduler.  Schedulers are users on whose behalf the current user (assistant) can schedule meetings for. By calling this API, the current user will no longer be a scheduling assistant of this scheduler.   **Prerequisite**: Current user must be under the same account as the scheduler.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param scheduler_id Scheduler&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_scheduler_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_schedulers
  # List User Schedulers
  # List all the schedulers of a user. Schedulers in this context are the users for whom the current user can schedule meetings for.  For instance, if the current user (i.e., the user whose userId was passed in the path parameter of this API call) is user A, the response of this API will contain a list of user(s), for whom user A can schedule and manage meetings. User A is the assistant of these users and thus has scheduling privilege for these user(s).   **Prerequisites**: * Current user must be under the same account as the scheduler.&lt;br&gt; **Scopes**: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;  
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @return [UserSchedulersList]
  describe 'user_schedulers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_schedulers_delete
  # Delete User Schedulers
  # Delete all of a user&#39;s schedulers. Schedulers are users on whose behalf the current user (assistant) can schedule meetings for. By calling this API, the current user will no longer be a scheduling assistant of any user.   **Prerequisite**: Current user (assistant) must be under the same account as the scheduler.&lt;br&gt; **Scopes**: &#x60;user:write:admin&#x60; &#x60;user:write&#x60;
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_schedulers_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_settings
  # Get User Settings
  # Retrieve a user&#39;s settings.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;user:read:admin&#x60; &#x60;user:read&#x60;&lt;br&gt;    
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :login_type &#x60;0&#x60; - Facebook.&lt;br&gt;&#x60;1&#x60; - Google.&lt;br&gt;&#x60;99&#x60; - API.&lt;br&gt;&#x60;100&#x60; - Zoom.&lt;br&gt;&#x60;101&#x60; - SSO.
  # @option opts [String] :option &#x60;meeting_authentication&#x60;: Use this query parameter to view [meeting authentication configuration](https://support.zoom.us/hc/en-us/articles/360037117472-Authentication-Profiles-for-Meetings-and-Webinars) applied on the account.&lt;br&gt;&#x60;recording_authentication&#x60;: Use this query parameter to view [recording authentication configuration](https://support.zoom.us/hc/en-us/articles/360037756671-Authentication-Profiles-for-Cloud-Recordings) applied on the account.
  # @return [Object]
  describe 'user_settings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_settings_update
  # Update User Settings
  # Update a user&#39;s settings.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;&lt;br&gt;    
  # @param body User Settings
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :option 
  # @return [nil]
  describe 'user_settings_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_sso_token_delete
  # Revoke a User&#39;s SSO Token
  # Revoke a user&#39;s SSO token.&lt;br&gt;&lt;br&gt; After calling this API, the SSO user will be logged out of their current Zoom session.&lt;br&gt; **Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_sso_token_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_status
  # Update User Status
  # An account owner or admins can deactivate as well as activate a user in a Zoom account. Deactivating a user will remove all licenses associated with a user. It will prevent the deactivated user from logging into their Zoom account. A deactivated user can be reactivated. Reactivating a user grants the user access to login to their Zoom account.&lt;br&gt; Use this API to either [deactivate](https://support.zoom.us/hc/en-us/articles/115005269946-Remove-User-from-your-Account#h_6a9bc1c3-d739-4945-b1f2-00b3b88fb5cc) an active user or to [reactivate](https://support.zoom.us/hc/en-us/articles/115005269946-Remove-User-from-your-Account#h_16319724-d120-4be6-af5d-31582d134ea0) a deactivated user .&lt;br&gt;&lt;br&gt;**Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;&lt;br&gt;    
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param body User status.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'user_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_token
  # Get a User Token
  # Retrieve a user&#39;s token.&lt;br&gt;&lt;br&gt; This token is used for starting meetings with the Client SDK.&lt;br&gt; **Scopes:** &#x60;user:read:admin&#x60; &#x60;user:read&#x60;&lt;br&gt; If a user signed into Zoom using Google or Facebook, a null value will be returned for the token. To get the token with this API, ask the user to sign into Zoom using their email and password instead.
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type User token types:&lt;br&gt;&#x60;token&#x60; - Used for starting meetings with the client SDK.&lt;br&gt;&#x60;zpk&#x60; - Used for generating the start meeting URL (Deprecated).&lt;br&gt;&#x60;zak&#x60; - Used for generating the start meeting URL. The token expiration time is two hours. For API users, the expiration time is 90 days.
  # @return [InlineResponse20051]
  describe 'user_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_update
  # Update User
  # Update information on a user&#39;s Zoom [profile](https://support.zoom.us/hc/en-us/articles/201363203-My-Profile).&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;user:write:admin&#x60; &#x60;user:write&#x60;&lt;br&gt;    
  # @param user_id The user ID or email address of the user. For user-level apps, pass &#x60;me&#x60; as the value for userId.
  # @param body User
  # @param [Hash] opts the optional parameters
  # @option opts [String] :login_type &#x60;0&#x60; - Facebook.&lt;br&gt;&#x60;1&#x60; - Google.&lt;br&gt;&#x60;99&#x60; - API.&lt;br&gt;&#x60;100&#x60; - Zoom.&lt;br&gt;&#x60;101&#x60; - SSO.
  # @return [nil]
  describe 'user_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_vanity_name
  # Check a User&#39;s PM Room Name
  # A personal meeting room is a virtual meeting room that can be permanently assigned to a user. Use this API to check if a personal meeting room with the given name exists or not.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;user:read:admin&#x60; &#x60;user:read&#x60;&lt;br&gt;  
  # @param vanity_name Personal meeting room name.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20053]
  describe 'user_vanity_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_zpk
  # Verify a User&#39;s zpk (Deprecated)
  # &lt;p style&#x3D;\&quot;background-color:#e1f5fe; color:#01579b\&quot;&gt;Note: We will stop supporting this API from &lt;b&gt;September 30, 2019&lt;/b&gt;. &lt;/p&gt; Check if the zpk is expired. The zpk object is used to authenticate a user.&lt;br&gt;&lt;br&gt;  Scopes: &#x60;user:read:admin&#x60; &#x60;user:read&#x60;
  # @param zpk User zpk.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'user_zpk test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users
  # List Users
  # A Zoom account can have one or more users. Use this API to list users on your account.&lt;br&gt;&lt;br&gt; &lt;p style&#x3D;\&quot;background-color:#e1f5fe; color:#01579b; padding:8px\&quot;&gt; &lt;b&gt;Note: &lt;/b&gt;Starting August 18, 2019, if an account holds more than 5000 users, the response data will no longer be sorted by email.&lt;/p&gt;  **Scopes:** &#x60;user:read:admin&#x60;&lt;br&gt;  
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status User statuses:&lt;br&gt;&#x60;active&#x60; - Users with an active status.&lt;br&gt;&#x60;inactive&#x60; - Users with an inactive status.&lt;br&gt;&#x60;pending&#x60; - Users with a pending status.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [Integer] :page_number The current page number of returned records.
  # @option opts [String] :role_id Unique identifier for the role. Provide this parameter if you would like to filter the response by a specific role. You can retrieve Role IDs from [List Roles](https://marketplace.zoom.us/docs/api-reference/zoom-api/roles/roles) API. 
  # @return [InlineResponse20046]
  describe 'users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
