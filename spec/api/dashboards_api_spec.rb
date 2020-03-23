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

# Unit tests for ZoomUs::DashboardsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DashboardsApi' do
  before do
    # run before each test
    @instance = ZoomUs::DashboardsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DashboardsApi' do
    it 'should create an instance of DashboardsApi' do
      expect(@instance).to be_instance_of(ZoomUs::DashboardsApi)
    end
  end

  # unit tests for dashboard_client_feedback
  # List Zoom Meetings Client Feedbacks
  # Retrieve survey results from [Zoom meetings client feedback](https://support.zoom.us/hc/en-us/articles/115005855266-End-of-Meeting-Feedback-Survey#h_e30d552b-6d8e-4e0a-a588-9ca8180c4dbf). &lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months.  **Prerequisites:** * Business or higher account * [Feedback to Zoom](https://support.zoom.us/hc/en-us/articles/115005838023) enabled.  **Scope:** &#x60;account:read:admin&#x60;&lt;br&gt;  
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20032]
  describe 'dashboard_client_feedback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_client_feedback_detail
  # Get Zoom Meetings Client Feedback
  # Retrieve detailed information on a [Zoom meetings client feedback](https://support.zoom.us/hc/en-us/articles/115005855266-End-of-Meeting-Feedback-Survey#h_e30d552b-6d8e-4e0a-a588-9ca8180c4dbf). &lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months.  **Prerequisites:** * Business or higher account * [Feedback to Zoom](https://support.zoom.us/hc/en-us/articles/115005838023) enabled.  **Scope:** &#x60;dashboard_home:read:admin&#x60;&lt;br&gt;   &#x60;
  # @param feedback_id Feedback Detail Id
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :from 
  # @option opts [Date] :to 
  # @option opts [Integer] :page_size 
  # @option opts [String] :next_page_token 
  # @return [InlineResponse20059]
  describe 'dashboard_client_feedback_detail test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_crc
  # Get CRC Port Usage
  # A Cloud Room Connector allows H.323/SIP endpoints to connect to a Zoom meeting.   Use this API to get the hour by hour CRC Port usage for a specified period of time. &lt;aside class&#x3D;&#39;notice&#39;&gt;We will provide the report for a maximum of one month. For example, if \&quot;from\&quot; is set to \&quot;2017-08-05\&quot; and \&quot;to\&quot; is set to \&quot;2017-10-10\&quot;, we will adjust \&quot;from\&quot; to \&quot;2017-09-10\&quot;.&lt;/aside&gt;&lt;br&gt;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Business, Education or API Plan. * Room Connector must be enabled on the account.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;dashboard_crc:read:admin&#x60;&lt;br&gt; 
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'dashboard_crc test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_im
  # Get IM Metrics
  # Get [metrics](https://support.zoom.us/hc/en-us/articles/204654719-Dashboard#h_cc7e9749-1c70-4afb-a9a2-9680654821e4) on how users are utilizing the Zoom Chat Client.&lt;br&gt;&lt;br&gt; &lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months. **Scope:** &#x60;dashboard_im:read:admin&#x60;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Business or a higher plan.  
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse20031]
  describe 'dashboard_im test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_issue_detail_zoom_room
  # Get Issues of Zoom Rooms 
  # Get information about the issues that occured on the Top 25 **Zoom Rooms with issues** in an acount. &lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months.  **Scope:** &#x60;dashboard_home:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:** &lt;br&gt; * Business or a higher plan. * Zoom Room must be enabled in the account.
  # @param zoomroom_id The Zoom room ID.
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse20033]
  describe 'dashboard_issue_detail_zoom_room test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_issue_zoom_room
  # Get Top 25 Zoom Rooms with Issues
  # Get information on top 25 Zoom Rooms with issues in a month. The month specified with the \&quot;from\&quot; and \&quot;to\&quot; range should fall within the last six months.&lt;br&gt; **Scope:** &#x60;dashboard_home:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:**&lt;br&gt; * Business or a higher plan. * Zoom Room must be enabled in the account.
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'dashboard_issue_zoom_room test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_meeting_detail
  # Get Meeting Details
  # Get details on live or past meetings. This overview will show if features such as audio, video, screen sharing, and recording were being used in the meeting. You can also see the license types of each user on your account.&lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months.  &lt;br&gt; **Scopes:** &#x60;dashboard_meetings:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:** &lt;br&gt; * Business or a higher plan.
  # @param meeting_id The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;pastOne&#x60; - Past one user meetings.&lt;br&gt;&#x60;live&#x60; - Live meetings.
  # @return [MeetingMetrics]
  describe 'dashboard_meeting_detail test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_meeting_participant_qos
  # Get Meeting Participant QOS
  # Retrieve the quality of service for participants from live or past meetings. This data indicates the connection quality for sending/receiving video, audio, and shared content. If nothing is being sent or received at that time, no information will be shown in the fields. &lt;br&gt;&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; 
  # @param meeting_id The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  # @param participant_id Participant ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;live&#x60; - Live Meetings.
  # @return [ParticipantQOS]
  describe 'dashboard_meeting_participant_qos test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_meeting_participant_share
  # Get Sharing/Recording Details of Meeting Participants
  # Retrieve the sharing and recording details of participants from live or past meetings.&lt;br&gt;&lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months.&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:** &lt;br&gt; * Business or a higher plan.
  # @param meeting_id The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;live&#x60; - Live Meetings.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceed the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse20028]
  describe 'dashboard_meeting_participant_share test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_meeting_participants
  # List Meeting Participants
  # Get a list of participants from live or past meetings.&lt;br&gt;&lt;br&gt; If you do not provide the &#x60;type&#x60; query parameter, the default value will be set to &#x60;live&#x60; and thus, you will only see metrics for participants in a live meeting, if any meeting is currently being conducted. To view metrics on past meeting participants, provide the appropriate value for &#x60;type&#x60;. &lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months.  **Scopes:** &#x60;dashboard_meetings:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:** Business or a higher plan.
  # @param meeting_id The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;pastOne&#x60; - Past one user meetings.&lt;br&gt;&#x60;live&#x60; - Live meetings.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse20027]
  describe 'dashboard_meeting_participants test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_meeting_participants_qos
  # List Meeting Participants QOS
  # Get a list of meeting participants from live or past meetings along with the quality of service they recieve during the meeting such as connection quality for sending/receiving video, audio, and shared content.&lt;br&gt;If you do not provide the &#x60;type&#x60; query parameter, the default value will be set to &#x60;live&#x60; and thus, you will only see metrics for participants in a live meeting, if any meeting is currently being conducted. To view metrics on past meeting participants, provide the appropriate value for &#x60;type&#x60;.&lt;br&gt; &lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months. **Scopes:** &#x60;dashboard_meetings:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:** &lt;br&gt; * Business or a higher plan.
  # @param meeting_id The meeting ID or meeting UUID. If given the meeting ID it will take the last meeting instance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;live&#x60; - Live Meetings.
  # @option opts [Integer] :page_size The number of items returned per page.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [ParticipantQOSList]
  describe 'dashboard_meeting_participants_qos test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_meetings
  # List Meetings
  # List total live or past meetings that occurred during a specified period of time. This overview will show if features such as audio, video, screen sharing, and recording were being used in the meeting. You can also see the license types of each user on your account.&lt;br&gt; You can specify a monthly date range for the dashboard data using the &#x60;from&#x60; and &#x60;to&#x60; query parameters. The month should fall within the last six months.&lt;br&gt; **Scopes:** &#x60;dashboard_meetings:read:admin&#x60;&lt;br&gt; **Prerequisites:** &lt;br&gt; * Business or a higher plan.&lt;br&gt;&lt;br&gt;
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The meeting types: &lt;br&gt;&#x60;past&#x60; - Past meetings.&lt;br&gt;&#x60;pastOne&#x60; - Past one user meetings. &lt;br&gt;&#x60;live&#x60; - Live meetings.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse20026]
  describe 'dashboard_meetings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_webinar_detail
  # Get Webinar Details
  # Retrieve details from live or past webinars.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:**&lt;br&gt; * Business, Education or API Plan with Webinar add-on.  
  # @param webinar_id The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The webinar type.
  # @return [WebinarMetrics]
  describe 'dashboard_webinar_detail test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_webinar_participant_qos
  # Get Webinar Participant QOS
  # Retrieve details on the quality of service that participants from live or past webinars recieved.&lt;br&gt;This data indicates the connection quality for sending/receiving video, audio, and shared content. If nothing is being sent or received at that time, no information will be shown in the fields.&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:** &lt;br&gt; * Business, Education or API Plan with Zoom Rooms set up. 
  # @param webinar_id The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  # @param participant_id Participant ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The webinar type.
  # @return [ParticipantQOS]
  describe 'dashboard_webinar_participant_qos test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_webinar_participant_share
  # Get Sharing/Recording Details of Webinar Participants
  # Retrieve the sharing and recording details of participants from live or past webinars. &lt;br&gt;&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:**&lt;br&gt; * Business, Education or API Plan with Webinar add-on.  
  # @param webinar_id The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The webinar type.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceed the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse20028]
  describe 'dashboard_webinar_participant_share test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_webinar_participants
  # Get Webinar Participants
  # Retrieve details on participants from live or past webinars.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:**&lt;br&gt; * Business, Education or API Plan with Webinar add-on.  
  # @param webinar_id The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The webinar type.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse20030]
  describe 'dashboard_webinar_participants test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_webinar_participants_qos
  # List Webinar Participant QOS
  # Retrieve a list of participants from live or past webinars and the quality of service they received.&lt;br&gt;This data indicates the connection quality for sending/receiving video, audio, and shared content. If nothing is being sent or received at that time, no information will be shown in the fields.&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:** * Business, Education or API Plan with Webinar add-on.  
  # @param webinar_id The webinar ID or webinar UUID. If given the webinar ID it will take the last webinar instance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The webinar type.
  # @option opts [Integer] :page_size The number of items returned per page.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [ParticipantQOSList]
  describe 'dashboard_webinar_participants_qos test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_webinars
  # List Webinars
  # List all the live or past webinars from a specified period of time. &lt;br&gt;&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; **Prerequisites:**&lt;br&gt; * Business, Education or API Plan with Webinar add-on.   
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type The webinar type.
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [String] :next_page_token The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
  # @return [InlineResponse20029]
  describe 'dashboard_webinars test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_zoom_room
  # Get Zoom Rooms Details
  # The Zoom Rooms dashboard metrics lets you know the type of configuration a Zoom room has and details on the meetings held in that room.   Use this API to retrieve information on a specific room.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;dashboard_zr:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:**&lt;br&gt; * Business, Education or API Plan with Zoom Rooms set up. 
  # @param zoomroom_id The Zoom room ID.
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [Integer] :page_number The current page number of returned records.
  # @return [Object]
  describe 'dashboard_zoom_room test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_zoom_room_issue
  # Get Top 25 issues of Zoom Rooms
  # Get Top 25 issues of Zoom Rooms.&lt;br&gt; **Scopes:** &#x60;dashboard_zr:read:admin&#x60;&lt;br&gt; &lt;br&gt; **Prerequisites:**&lt;br&gt; * Business, Education or API Plan with Zoom Rooms set up.  
  # @param from Start date in &#39;yyyy-mm-dd&#39; format. The date range defined by the \&quot;from\&quot; and \&quot;to\&quot; parameters should only be one month as the report includes only one month worth of data at once.
  # @param to End date.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'dashboard_zoom_room_issue test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for dashboard_zoom_rooms
  # List Zoom Rooms
  # List information on all Zoom Rooms in an account.&lt;br&gt;&lt;br&gt; **Scopes:** &#x60;dashboard_zr:read:admin&#x60; **Prerequisites:**&lt;br&gt; * Business, Education or API Plan with Zoom Rooms set up.   
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The number of records returned within a single API call.
  # @option opts [Integer] :page_number The current page number of returned records.
  # @return [ZoomRoomList]
  describe 'dashboard_zoom_rooms test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_meeting_satisfaction
  # List Client Meeting Satisfaction 
  # If the [End of Meeting Feedback Survey](https://support.zoom.us/hc/en-us/articles/115005855266) option is enabled, attendees will be prompted with a survey window where they can tap either the **Thumbs Up** or **Thumbs Down** button that indicates their Zoom meeting experience. With this API, you can get information on the attendees&#39; meeting satisfaction. Specify a monthly date range for the query using the from and to query parameters. The month should fall within the last six months.  To get information on the survey results with negative experiences (indicated by **Thumbs Down**), use the [Get Zoom Meetings Client Feedback API](https://marketplace.zoom.us/docs/api-reference/zoom-api/dashboards/dashboardclientfeedbackdetail).&lt;br&gt; **Scopes:** &#x60;dashboard:read:admin&#x60;&lt;br&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :from The start date for the query in “yyyy-mm-dd” format. 
  # @option opts [Date] :to The end date for the query in “yyyy-mm-dd” format. 
  # @return [InlineResponse20087]
  describe 'list_meeting_satisfaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end