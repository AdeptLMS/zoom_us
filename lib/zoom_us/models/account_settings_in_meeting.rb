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
    # Account Settings: In Meeting.
    class AccountSettingsInMeeting
      # Require that all meetings are encrypted using AES.
      attr_accessor :e2e_encryption

      # Allow meeting participants to send a message that is visible to all participants.
      attr_accessor :chat

      # Allow a meeting participant to send a private message to another participant.
      attr_accessor :private_chat

      # Automatically save all in-meeting chats so that the host does not need to manually save the chat transcript after the meeting starts.
      attr_accessor :auto_saving_chat

      # Play sound when participants join or leave.<br>`host` - Heard by host only.<br>`all` - Heard by host and all attendees.<br>`none` - Disable.
      attr_accessor :entry_exit_chime

      # Record and play their own voice.
      attr_accessor :record_play_own_voice

      # Hosts and participants can send files through the in-meeting chat.
      attr_accessor :file_transfer

      # Add a \"Feedback\" tab to the Windows Settings or Mac Preferences dialog. Enable users to provide feedback to Zoom at the end of the meeting.
      attr_accessor :feedback

      # Display a thumbs up or down survey at the end of each meeting.
      attr_accessor :post_meeting_feedback

      # Allow the host to add co-hosts.
      attr_accessor :co_host

      # Add \"Polls\" to the meeting controls.
      attr_accessor :polling

      # Allow hosts to temporarily remove an attendee from a meeting.
      attr_accessor :attendee_on_hold

      # Always show the meeting control toolbar.
      attr_accessor :show_meeting_control_toolbar

      # Show the Zoom desktop application when sharing screens.
      attr_accessor :allow_show_zoom_windows

      # Allow participants to use annotation tools to add information to shared screens.
      attr_accessor :annotation

      # Allow participants to share a whiteboard that includes annotation tools.
      attr_accessor :whiteboard

      # Allow a Q&A in a webinar.
      attr_accessor :webinar_question_answer

      # Allow an anonymous Q&A in a webinar.
      attr_accessor :anonymous_question_answer

      # Allow host to split meeting participants into separate, smaller rooms.
      attr_accessor :breakout_room

      # Allow a host to type closed captions. Enable a host to assign a participant or third party device to add closed captions.
      attr_accessor :closed_caption

      # Allow another user to take control of your camera during a meeting.
      attr_accessor :far_end_camera_control

      # Activate higher quality video for host and participants. Please note: This will use more bandwidth.
      attr_accessor :group_hd

      # Allow users to replace their background with any selected image. Choose or upload an image in the Zoom desktop application settings.
      attr_accessor :virtual_background

      # Add a watermark when viewing a shared screen.
      attr_accessor :watermark

      # Identify guest participants in a meeting or webinar.
      attr_accessor :alert_guest_join

      # Enable users to see and add contacts to the \"auto-answer group\" in the chat contact list. Any call from members of this group will automatically be answered.
      attr_accessor :auto_answer

      # Peer to peer connection while only two people are in a meeting.
      attr_accessor :p2p_connetion

      # Peer to peer listening ports range.
      attr_accessor :p2p_ports

      # The listening ports range, separated by a comma (ex 55,56). The ports range must be between 1 to 65535.
      attr_accessor :ports_range

      # Only show the default email when sending email invites.
      attr_accessor :sending_default_email_invites

      # Use HTML formatted email for the Outlook plugin.
      attr_accessor :use_html_format_email

      # DSCP marking.
      attr_accessor :dscp_marking

      # DSCP audio.
      attr_accessor :dscp_audio

      # DSCP video.
      attr_accessor :dscp_video

      # Allow users to select stereo audio in their client settings.
      attr_accessor :stereo_audio

      # Allow users to select original sound in their client settings.
      attr_accessor :original_audio

      # Allow screen sharing.
      attr_accessor :screen_sharing

      # Allow users to request remote control.
      attr_accessor :remote_control

      # Allows the host to see an indicator in the participant panel if a meeting or webinar attendee does not have Zoom in focus while screen sharing.
      attr_accessor :attention_tracking

      # Allow live streaming.
      attr_accessor :allow_live_streaming

      # Workplace by facebook.
      attr_accessor :workplace_by_facebook

      # Custom live streaming.
      attr_accessor :custom_live_streaming

      # Custom service instructions.
      attr_accessor :custom_service_instructions

      class EnumAttributeValidator
        attr_reader :datatype
        attr_reader :allowable_values

        def initialize(datatype, allowable_values)
          @allowable_values = allowable_values.map do |value|
            case datatype.to_s
            when /Integer/i
              value.to_i
            when /Float/i
              value.to_f
            else
              value
            end
          end
        end

        def valid?(value)
          !value || allowable_values.include?(value)
        end
      end

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'e2e_encryption' => :'e2e_encryption',
          :'chat' => :'chat',
          :'private_chat' => :'private_chat',
          :'auto_saving_chat' => :'auto_saving_chat',
          :'entry_exit_chime' => :'entry_exit_chime',
          :'record_play_own_voice' => :'record_play_own_voice',
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
          :'webinar_question_answer' => :'webinar_question_answer',
          :'anonymous_question_answer' => :'anonymous_question_answer',
          :'breakout_room' => :'breakout_room',
          :'closed_caption' => :'closed_caption',
          :'far_end_camera_control' => :'far_end_camera_control',
          :'group_hd' => :'group_hd',
          :'virtual_background' => :'virtual_background',
          :'watermark' => :'watermark',
          :'alert_guest_join' => :'alert_guest_join',
          :'auto_answer' => :'auto_answer',
          :'p2p_connetion' => :'p2p_connetion',
          :'p2p_ports' => :'p2p_ports',
          :'ports_range' => :'ports_range',
          :'sending_default_email_invites' => :'sending_default_email_invites',
          :'use_html_format_email' => :'use_html_format_email',
          :'dscp_marking' => :'dscp_marking',
          :'dscp_audio' => :'dscp_audio',
          :'dscp_video' => :'dscp_video',
          :'stereo_audio' => :'stereo_audio',
          :'original_audio' => :'original_audio',
          :'screen_sharing' => :'screen_sharing',
          :'remote_control' => :'remote_control',
          :'attention_tracking' => :'attention_tracking',
          :'allow_live_streaming' => :'allow_live_streaming',
          :'workplace_by_facebook' => :'workplace_by_facebook',
          :'custom_live_streaming' => :'custom_live_streaming',
          :'custom_service_instructions' => :'custom_service_instructions'
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
          :'record_play_own_voice' => :'BOOLEAN',
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
          :'webinar_question_answer' => :'BOOLEAN',
          :'anonymous_question_answer' => :'BOOLEAN',
          :'breakout_room' => :'BOOLEAN',
          :'closed_caption' => :'BOOLEAN',
          :'far_end_camera_control' => :'BOOLEAN',
          :'group_hd' => :'BOOLEAN',
          :'virtual_background' => :'BOOLEAN',
          :'watermark' => :'BOOLEAN',
          :'alert_guest_join' => :'BOOLEAN',
          :'auto_answer' => :'BOOLEAN',
          :'p2p_connetion' => :'BOOLEAN',
          :'p2p_ports' => :'BOOLEAN',
          :'ports_range' => :'String',
          :'sending_default_email_invites' => :'BOOLEAN',
          :'use_html_format_email' => :'BOOLEAN',
          :'dscp_marking' => :'BOOLEAN',
          :'dscp_audio' => :'Integer',
          :'dscp_video' => :'Integer',
          :'stereo_audio' => :'BOOLEAN',
          :'original_audio' => :'BOOLEAN',
          :'screen_sharing' => :'BOOLEAN',
          :'remote_control' => :'BOOLEAN',
          :'attention_tracking' => :'BOOLEAN',
          :'allow_live_streaming' => :'BOOLEAN',
          :'workplace_by_facebook' => :'BOOLEAN',
          :'custom_live_streaming' => :'BOOLEAN',
          :'custom_service_instructions' => :'String'
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

        if attributes.has_key?(:'record_play_own_voice')
          self.record_play_own_voice = attributes[:'record_play_own_voice']
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

        if attributes.has_key?(:'watermark')
          self.watermark = attributes[:'watermark']
        end

        if attributes.has_key?(:'alert_guest_join')
          self.alert_guest_join = attributes[:'alert_guest_join']
        end

        if attributes.has_key?(:'auto_answer')
          self.auto_answer = attributes[:'auto_answer']
        end

        if attributes.has_key?(:'p2p_connetion')
          self.p2p_connetion = attributes[:'p2p_connetion']
        end

        if attributes.has_key?(:'p2p_ports')
          self.p2p_ports = attributes[:'p2p_ports']
        end

        if attributes.has_key?(:'ports_range')
          self.ports_range = attributes[:'ports_range']
        else
          self.ports_range = ''
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

        if attributes.has_key?(:'dscp_audio')
          self.dscp_audio = attributes[:'dscp_audio']
        end

        if attributes.has_key?(:'dscp_video')
          self.dscp_video = attributes[:'dscp_video']
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

        if attributes.has_key?(:'remote_control')
          self.remote_control = attributes[:'remote_control']
        end

        if attributes.has_key?(:'attention_tracking')
          self.attention_tracking = attributes[:'attention_tracking']
        end

        if attributes.has_key?(:'allow_live_streaming')
          self.allow_live_streaming = attributes[:'allow_live_streaming']
        end

        if attributes.has_key?(:'workplace_by_facebook')
          self.workplace_by_facebook = attributes[:'workplace_by_facebook']
        end

        if attributes.has_key?(:'custom_live_streaming')
          self.custom_live_streaming = attributes[:'custom_live_streaming']
        end

        if attributes.has_key?(:'custom_service_instructions')
          self.custom_service_instructions = attributes[:'custom_service_instructions']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if !@dscp_audio.nil? && @dscp_audio > 63
          invalid_properties.push('invalid value for "dscp_audio", must be smaller than or equal to 63.')
        end

        if !@dscp_audio.nil? && @dscp_audio < 1
          invalid_properties.push('invalid value for "dscp_audio", must be greater than or equal to 1.')
        end

        if !@dscp_video.nil? && @dscp_video > 63
          invalid_properties.push('invalid value for "dscp_video", must be smaller than or equal to 63.')
        end

        if !@dscp_video.nil? && @dscp_video < 1
          invalid_properties.push('invalid value for "dscp_video", must be greater than or equal to 1.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        entry_exit_chime_validator = EnumAttributeValidator.new('String', ['host', 'all', 'none'])
        return false unless entry_exit_chime_validator.valid?(@entry_exit_chime)
        return false if !@dscp_audio.nil? && @dscp_audio > 63
        return false if !@dscp_audio.nil? && @dscp_audio < 1
        return false if !@dscp_video.nil? && @dscp_video > 63
        return false if !@dscp_video.nil? && @dscp_video < 1
        true
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] entry_exit_chime Object to be assigned
      def entry_exit_chime=(entry_exit_chime)
        validator = EnumAttributeValidator.new('String', ['host', 'all', 'none'])
        unless validator.valid?(entry_exit_chime)
          fail ArgumentError, 'invalid value for "entry_exit_chime", must be one of #{validator.allowable_values}.'
        end
        @entry_exit_chime = entry_exit_chime
      end

      # Custom attribute writer method with validation
      # @param [Object] dscp_audio Value to be assigned
      def dscp_audio=(dscp_audio)
        if !dscp_audio.nil? && dscp_audio > 63
          fail ArgumentError, 'invalid value for "dscp_audio", must be smaller than or equal to 63.'
        end

        if !dscp_audio.nil? && dscp_audio < 1
          fail ArgumentError, 'invalid value for "dscp_audio", must be greater than or equal to 1.'
        end

        @dscp_audio = dscp_audio
      end

      # Custom attribute writer method with validation
      # @param [Object] dscp_video Value to be assigned
      def dscp_video=(dscp_video)
        if !dscp_video.nil? && dscp_video > 63
          fail ArgumentError, 'invalid value for "dscp_video", must be smaller than or equal to 63.'
        end

        if !dscp_video.nil? && dscp_video < 1
          fail ArgumentError, 'invalid value for "dscp_video", must be greater than or equal to 1.'
        end

        @dscp_video = dscp_video
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
          record_play_own_voice == o.record_play_own_voice &&
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
          webinar_question_answer == o.webinar_question_answer &&
          anonymous_question_answer == o.anonymous_question_answer &&
          breakout_room == o.breakout_room &&
          closed_caption == o.closed_caption &&
          far_end_camera_control == o.far_end_camera_control &&
          group_hd == o.group_hd &&
          virtual_background == o.virtual_background &&
          watermark == o.watermark &&
          alert_guest_join == o.alert_guest_join &&
          auto_answer == o.auto_answer &&
          p2p_connetion == o.p2p_connetion &&
          p2p_ports == o.p2p_ports &&
          ports_range == o.ports_range &&
          sending_default_email_invites == o.sending_default_email_invites &&
          use_html_format_email == o.use_html_format_email &&
          dscp_marking == o.dscp_marking &&
          dscp_audio == o.dscp_audio &&
          dscp_video == o.dscp_video &&
          stereo_audio == o.stereo_audio &&
          original_audio == o.original_audio &&
          screen_sharing == o.screen_sharing &&
          remote_control == o.remote_control &&
          attention_tracking == o.attention_tracking &&
          allow_live_streaming == o.allow_live_streaming &&
          workplace_by_facebook == o.workplace_by_facebook &&
          custom_live_streaming == o.custom_live_streaming &&
          custom_service_instructions == o.custom_service_instructions
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [e2e_encryption, chat, private_chat, auto_saving_chat, entry_exit_chime, record_play_own_voice, file_transfer, feedback, post_meeting_feedback, co_host, polling, attendee_on_hold, show_meeting_control_toolbar, allow_show_zoom_windows, annotation, whiteboard, webinar_question_answer, anonymous_question_answer, breakout_room, closed_caption, far_end_camera_control, group_hd, virtual_background, watermark, alert_guest_join, auto_answer, p2p_connetion, p2p_ports, ports_range, sending_default_email_invites, use_html_format_email, dscp_marking, dscp_audio, dscp_video, stereo_audio, original_audio, screen_sharing, remote_control, attention_tracking, allow_live_streaming, workplace_by_facebook, custom_live_streaming, custom_service_instructions].hash
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
