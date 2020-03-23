=begin
#Zoom API

#The Zoom API allows developers to safely and securely access information from Zoom. You can use this API to build private services or public applications on the [Zoom App Marketplace](http://marketplace.zoom.us). To learn how to get your credentials and create private/public applications, read our [Authorization Guide](https://marketplace.zoom.us/docs/guides/authorization/credentials). All endpoints are available via `https` and are located at `api.zoom.us/v2/`.  For instance you can list all users on an account via `https://api.zoom.us/v2/users/`.

OpenAPI spec version: 2.0.0
Contact: developersupport@zoom.us
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module ZoomUs
  module Models
    class AccountsaccountIdlockSettingsInMeeting
      # Require that all meetings are encrypted using AES.
      attr_accessor :e2e_encryption

      # Allow meeting participants to send chat message visible to all participants.
      attr_accessor :chat

      # Allow meeting participants to send a private 1:1 message to another participant.
      attr_accessor :private_chat

      # Automatically save all in-meeting chats.
      attr_accessor :auto_saving_chat

      # Play sound when participants join or leave.
      attr_accessor :entry_exit_chime

      # Allow hosts and participants to send files through the in-meeting chat.
      attr_accessor :file_transfer

      # Enable users to provide feedback to Zoom at the end of the meeting.
      attr_accessor :feedback

      # Display end-of-meeting experience feedback survey.
      attr_accessor :post_meeting_feedback

      # Allow the host to add co-hosts. Co-hosts have the same in-meeting controls as the host.
      attr_accessor :co_host

      # Add 'Polls' to the meeting controls. This allows the host to survey the attendees.
      attr_accessor :polling

      # Allow hosts to temporarily remove an attendee from the meeting.
      attr_accessor :attendee_on_hold

      # Always show meeting controls during a meeting.
      attr_accessor :show_meeting_control_toolbar

      # Show Zoom windows during screen share.
      attr_accessor :allow_show_zoom_windows

      # Allow participants to use annotation tools to add information to shared screens.
      attr_accessor :annotation

      # Allow participants to share a whiteboard that includes annotation tools.
      attr_accessor :whiteboard

      # During screen sharing, allow the person who is sharing to let others control the shared content.
      attr_accessor :remote_control

      #
      attr_accessor :webinar_question_answer

      #
      attr_accessor :anonymous_question_answer

      # Allow host to split meeting participants into separate, smaller rooms.
      attr_accessor :breakout_room

      # Allow host to type closed captions or assign a participant/third party device to add closed captions.
      attr_accessor :closed_caption

      # Allow another user to take control of the camera during a meeting.
      attr_accessor :far_end_camera_control

      # Enable higher quality video for host and participants. This will require more bandwidth.
      attr_accessor :group_hd

      # Enable virtual background.
      attr_accessor :virtual_background

      # Allow participants who belong to your account to see that a guest (someone who does not belong to your account) is participating in the meeting/webinar.
      attr_accessor :alert_guest_join

      # Enable users to see and add contacts to 'auto-answer group' in the contact list on chat. Any call from members of this group will be automatically answered.
      attr_accessor :auto_answer

      # Allow users to invite participants by email only by default.
      attr_accessor :sending_default_email_invites

      # Allow  HTML formatting instead of plain text for meeting invitations scheduled with the Outlook plugin.
      attr_accessor :use_html_format_email

      # Allow users to select stereo audio during a meeting.
      attr_accessor :dscp_marking

      # Allow users to select stereo audio during a meeting.
      attr_accessor :stereo_audio

      # Allow users to select original sound during a meeting.
      attr_accessor :original_audio

      # Allow host and participants to share their screen or content during meetings.
      attr_accessor :screen_sharing

      # Allow the host to see an indicator in the participant panel if a meeting/webinar attendee does not have Zoom in focus during screen sharing.
      attr_accessor :attention_tracking

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'e2e_encryption' => :'e2e_encryption',
          :'chat' => :'chat',
          :'private_chat' => :'private_chat',
          :'auto_saving_chat' => :'auto_saving_chat',
          :'entry_exit_chime' => :'entry_exit_chime',
          :'file_transfer' => :'file_transfer',
          :'feedback' => :'feedback',
          :'post_meeting_feedback' => :'post_meeting_feedback',
          :'co_host' => :'co_host',
          :'polling' => :'polling',
          :'attendee_on_hold' => :'attendee_on_hold',
          :'show_meeting_control_toolbar' => :'show_meeting_control_toolbar',
          :'allow_show_zoom_windows' => :'allow_show_zoom_windows',
          :'annotation' => :'annotation',
          :'whiteboard' => :'whiteboard',
          :'remote_control' => :'remote_control',
          :'webinar_question_answer' => :'webinar_question_answer',
          :'anonymous_question_answer' => :'anonymous_question_answer',
          :'breakout_room' => :'breakout_room',
          :'closed_caption' => :'closed_caption',
          :'far_end_camera_control' => :'far_end_camera_control',
          :'group_hd' => :'group_hd',
          :'virtual_background' => :'virtual_background',
          :'alert_guest_join' => :'alert_guest_join',
          :'auto_answer' => :'auto_answer',
          :'sending_default_email_invites' => :'sending_default_email_invites',
          :'use_html_format_email' => :'use_html_format_email',
          :'dscp_marking' => :'dscp_marking',
          :'stereo_audio' => :'stereo_audio',
          :'original_audio' => :'original_audio',
          :'screen_sharing' => :'screen_sharing',
          :'attention_tracking' => :'attention_tracking'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'e2e_encryption' => :'BOOLEAN',
          :'chat' => :'BOOLEAN',
          :'private_chat' => :'BOOLEAN',
          :'auto_saving_chat' => :'BOOLEAN',
          :'entry_exit_chime' => :'String',
          :'file_transfer' => :'BOOLEAN',
          :'feedback' => :'BOOLEAN',
          :'post_meeting_feedback' => :'BOOLEAN',
          :'co_host' => :'BOOLEAN',
          :'polling' => :'BOOLEAN',
          :'attendee_on_hold' => :'BOOLEAN',
          :'show_meeting_control_toolbar' => :'BOOLEAN',
          :'allow_show_zoom_windows' => :'BOOLEAN',
          :'annotation' => :'BOOLEAN',
          :'whiteboard' => :'BOOLEAN',
          :'remote_control' => :'BOOLEAN',
          :'webinar_question_answer' => :'BOOLEAN',
          :'anonymous_question_answer' => :'BOOLEAN',
          :'breakout_room' => :'BOOLEAN',
          :'closed_caption' => :'BOOLEAN',
          :'far_end_camera_control' => :'BOOLEAN',
          :'group_hd' => :'BOOLEAN',
          :'virtual_background' => :'BOOLEAN',
          :'alert_guest_join' => :'BOOLEAN',
          :'auto_answer' => :'BOOLEAN',
          :'sending_default_email_invites' => :'BOOLEAN',
          :'use_html_format_email' => :'BOOLEAN',
          :'dscp_marking' => :'BOOLEAN',
          :'stereo_audio' => :'BOOLEAN',
          :'original_audio' => :'BOOLEAN',
          :'screen_sharing' => :'BOOLEAN',
          :'attention_tracking' => :'BOOLEAN'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'e2e_encryption')
          self.e2e_encryption = attributes[:'e2e_encryption']
        end

        if attributes.has_key?(:'chat')
          self.chat = attributes[:'chat']
        end

        if attributes.has_key?(:'private_chat')
          self.private_chat = attributes[:'private_chat']
        end

        if attributes.has_key?(:'auto_saving_chat')
          self.auto_saving_chat = attributes[:'auto_saving_chat']
        end

        if attributes.has_key?(:'entry_exit_chime')
          self.entry_exit_chime = attributes[:'entry_exit_chime']
        end

        if attributes.has_key?(:'file_transfer')
          self.file_transfer = attributes[:'file_transfer']
        end

        if attributes.has_key?(:'feedback')
          self.feedback = attributes[:'feedback']
        end

        if attributes.has_key?(:'post_meeting_feedback')
          self.post_meeting_feedback = attributes[:'post_meeting_feedback']
        end

        if attributes.has_key?(:'co_host')
          self.co_host = attributes[:'co_host']
        end

        if attributes.has_key?(:'polling')
          self.polling = attributes[:'polling']
        end

        if attributes.has_key?(:'attendee_on_hold')
          self.attendee_on_hold = attributes[:'attendee_on_hold']
        end

        if attributes.has_key?(:'show_meeting_control_toolbar')
          self.show_meeting_control_toolbar = attributes[:'show_meeting_control_toolbar']
        end

        if attributes.has_key?(:'allow_show_zoom_windows')
          self.allow_show_zoom_windows = attributes[:'allow_show_zoom_windows']
        end

        if attributes.has_key?(:'annotation')
          self.annotation = attributes[:'annotation']
        end

        if attributes.has_key?(:'whiteboard')
          self.whiteboard = attributes[:'whiteboard']
        end

        if attributes.has_key?(:'remote_control')
          self.remote_control = attributes[:'remote_control']
        end

        if attributes.has_key?(:'webinar_question_answer')
          self.webinar_question_answer = attributes[:'webinar_question_answer']
        end

        if attributes.has_key?(:'anonymous_question_answer')
          self.anonymous_question_answer = attributes[:'anonymous_question_answer']
        end

        if attributes.has_key?(:'breakout_room')
          self.breakout_room = attributes[:'breakout_room']
        end

        if attributes.has_key?(:'closed_caption')
          self.closed_caption = attributes[:'closed_caption']
        end

        if attributes.has_key?(:'far_end_camera_control')
          self.far_end_camera_control = attributes[:'far_end_camera_control']
        end

        if attributes.has_key?(:'group_hd')
          self.group_hd = attributes[:'group_hd']
        end

        if attributes.has_key?(:'virtual_background')
          self.virtual_background = attributes[:'virtual_background']
        end

        if attributes.has_key?(:'alert_guest_join')
          self.alert_guest_join = attributes[:'alert_guest_join']
        end

        if attributes.has_key?(:'auto_answer')
          self.auto_answer = attributes[:'auto_answer']
        end

        if attributes.has_key?(:'sending_default_email_invites')
          self.sending_default_email_invites = attributes[:'sending_default_email_invites']
        end

        if attributes.has_key?(:'use_html_format_email')
          self.use_html_format_email = attributes[:'use_html_format_email']
        end

        if attributes.has_key?(:'dscp_marking')
          self.dscp_marking = attributes[:'dscp_marking']
        end

        if attributes.has_key?(:'stereo_audio')
          self.stereo_audio = attributes[:'stereo_audio']
        end

        if attributes.has_key?(:'original_audio')
          self.original_audio = attributes[:'original_audio']
        end

        if attributes.has_key?(:'screen_sharing')
          self.screen_sharing = attributes[:'screen_sharing']
        end

        if attributes.has_key?(:'attention_tracking')
          self.attention_tracking = attributes[:'attention_tracking']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        true
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
          e2e_encryption == o.e2e_encryption &&
          chat == o.chat &&
          private_chat == o.private_chat &&
          auto_saving_chat == o.auto_saving_chat &&
          entry_exit_chime == o.entry_exit_chime &&
          file_transfer == o.file_transfer &&
          feedback == o.feedback &&
          post_meeting_feedback == o.post_meeting_feedback &&
          co_host == o.co_host &&
          polling == o.polling &&
          attendee_on_hold == o.attendee_on_hold &&
          show_meeting_control_toolbar == o.show_meeting_control_toolbar &&
          allow_show_zoom_windows == o.allow_show_zoom_windows &&
          annotation == o.annotation &&
          whiteboard == o.whiteboard &&
          remote_control == o.remote_control &&
          webinar_question_answer == o.webinar_question_answer &&
          anonymous_question_answer == o.anonymous_question_answer &&
          breakout_room == o.breakout_room &&
          closed_caption == o.closed_caption &&
          far_end_camera_control == o.far_end_camera_control &&
          group_hd == o.group_hd &&
          virtual_background == o.virtual_background &&
          alert_guest_join == o.alert_guest_join &&
          auto_answer == o.auto_answer &&
          sending_default_email_invites == o.sending_default_email_invites &&
          use_html_format_email == o.use_html_format_email &&
          dscp_marking == o.dscp_marking &&
          stereo_audio == o.stereo_audio &&
          original_audio == o.original_audio &&
          screen_sharing == o.screen_sharing &&
          attention_tracking == o.attention_tracking
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [e2e_encryption, chat, private_chat, auto_saving_chat, entry_exit_chime, file_transfer, feedback, post_meeting_feedback, co_host, polling, attendee_on_hold, show_meeting_control_toolbar, allow_show_zoom_windows, annotation, whiteboard, remote_control, webinar_question_answer, anonymous_question_answer, breakout_room, closed_caption, far_end_camera_control, group_hd, virtual_background, alert_guest_join, auto_answer, sending_default_email_invites, use_html_format_email, dscp_marking, stereo_audio, original_audio, screen_sharing, attention_tracking].hash
      end

      # Builds the object from hash
      # @param [Hash] attributes Model attributes in the form of hash
      # @return [Object] Returns the model itself
      def build_from_hash(attributes)
        return nil unless attributes.is_a?(Hash)
        self.class.swagger_types.each_pair do |key, type|
          if type =~ /\AArray<(.*)>/i
            # check to ensure the input is an array given that the the attribute
            # is documented as an array but the input is not
            if attributes[self.class.attribute_map[key]].is_a?(Array)
              self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
            end
          elsif !attributes[self.class.attribute_map[key]].nil?
            self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
          end # or else data not found in attributes(hash), not an issue as the data can be optional
        end

        self
      end

      # Deserializes the data based on type
      # @param string type Data type
      # @param string value Value to be deserialized
      # @return [Object] Deserialized data
      def _deserialize(type, value)
        case type.to_sym
        when :DateTime
          ::DateTime.parse(value)
        when :Date
          ::Date.parse(value)
        when :String
          value.to_s
        when :Integer
          value.to_i
        when :Float
          value.to_f
        when :BOOLEAN
          if value.to_s =~ /\A(true|t|yes|y|1)\z/i
            true
          else
            false
          end
        when :Object
          # generic object (usually a Hash), return directly
          value
        when /\AArray<(?<inner_type>.+)>\z/
          inner_type = Regexp.last_match[:inner_type]
          value.map { |v| _deserialize(inner_type, v) }
        when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
          k_type = Regexp.last_match[:k_type]
          v_type = Regexp.last_match[:v_type]
          {}.tap do |hash|
            value.each do |k, v|
              hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
            end
          end
        else # model
          temp_model = Models.const_get(type).new
          temp_model.build_from_hash(value)
        end
      end

      # Returns the string representation of the object
      # @return [String] String presentation of the object
      def to_s
        to_hash.to_s
      end

      # to_body is an alias to to_hash (backward compatibility)
      # @return [Hash] Returns the object in the form of hash
      def to_body
        to_hash
      end

      # Returns the object in the form of hash
      # @return [Hash] Returns the object in the form of hash
      def to_hash
        hash = {}
        self.class.attribute_map.each_pair do |attr, param|
          value = self.send(attr)
          next if value.nil?
          hash[param] = _to_hash(value)
        end
        hash
      end

      # Outputs non-array value in the form of hash
      # For object, use to_hash. Otherwise, just return the value
      # @param [Object] value Any valid value
      # @return [Hash] Returns the value in the form of hash
      def _to_hash(value)
        if value.is_a?(Array)
          value.compact.map { |v| _to_hash(v) }
        elsif value.is_a?(Hash)
          {}.tap do |hash|
            value.each { |k, v| hash[k] = _to_hash(v) }
          end
        elsif value.respond_to? :to_hash
          value.to_hash
        else
          value
        end
      end
    end
  end
end
