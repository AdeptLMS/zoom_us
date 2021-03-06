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
    #
    class UserSettingsMeetingSettings1
      # End-to-end encryption required for all meetings.
      attr_accessor :e2e_encryption

      # Enable chat during meeting for all participants.
      attr_accessor :chat

      # Enable 1:1 private chat between participants during meetings.
      attr_accessor :private_chat

      # Auto save all in-meeting chats.
      attr_accessor :auto_saving_chat

      # Play sound when participants join or leave:<br>`host` - When host joins or leaves.<br>`all` - When any participant joins or leaves.<br>`none` - No join or leave sound.
      attr_accessor :entry_exit_chime

      # Record and play their own voice.
      attr_accessor :record_play_voice

      # Enable file transfer through in-meeting chat.
      attr_accessor :file_transfer

      # Enable option to send feedback to Zoom at the end of the meeting.
      attr_accessor :feedback

      # Allow the host to add co-hosts.
      attr_accessor :co_host

      # Add polls to the meeting controls.
      attr_accessor :polling

      # Allow host to put attendee on hold.
      attr_accessor :attendee_on_hold

      # Allow participants to use annotation tools.
      attr_accessor :annotation

      # Enable remote control during screensharing.
      attr_accessor :remote_control

      # Enable non-verbal feedback through screens.
      attr_accessor :non_verbal_feedback

      # Allow host to split meeting participants into separate breakout rooms.
      attr_accessor :breakout_room

      # Allow host to provide 1:1 remote support to a participant.
      attr_accessor :remote_support

      # Enable closed captions.
      attr_accessor :closed_caption

      # Enable group HD video.
      attr_accessor :group_hd

      # Enable virtual background.
      attr_accessor :virtual_background

      # Allow another user to take control of the camera.
      attr_accessor :far_end_camera_control

      # Share dual camera (deprecated).
      attr_accessor :share_dual_camera

      # Allow host to see if a participant does not have Zoom in focus during screen sharing.
      attr_accessor :attention_tracking

      # Enable Waiting room - if enabled, attendees can only join after host approves.
      attr_accessor :waiting_room

      # Allow live streaming.
      attr_accessor :allow_live_streaming

      # Allow livestreaming by host through Workplace by Facebook.
      attr_accessor :workplace_by_facebook

      # Allow custom live streaming.
      attr_accessor :custom_live_streaming

      # Custom service instructions.
      attr_accessor :custom_service_instructions

      # Always show meeting controls during a meeting.
      attr_accessor :show_meeting_control_toolbar

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
          :'record_play_voice' => :'record_play_voice',
          :'file_transfer' => :'file_transfer',
          :'feedback' => :'feedback',
          :'co_host' => :'co_host',
          :'polling' => :'polling',
          :'attendee_on_hold' => :'attendee_on_hold',
          :'annotation' => :'annotation',
          :'remote_control' => :'remote_control',
          :'non_verbal_feedback' => :'non_verbal_feedback',
          :'breakout_room' => :'breakout_room',
          :'remote_support' => :'remote_support',
          :'closed_caption' => :'closed_caption',
          :'group_hd' => :'group_hd',
          :'virtual_background' => :'virtual_background',
          :'far_end_camera_control' => :'far_end_camera_control',
          :'share_dual_camera' => :'share_dual_camera',
          :'attention_tracking' => :'attention_tracking',
          :'waiting_room' => :'waiting_room',
          :'allow_live_streaming' => :'allow_live_streaming',
          :'workplace_by_facebook' => :'workplace_by_facebook',
          :'custom_live_streaming' => :'custom_live_streaming',
          :'custom_service_instructions' => :'custom_service_instructions',
          :'show_meeting_control_toolbar' => :'show_meeting_control_toolbar'
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
          :'record_play_voice' => :'BOOLEAN',
          :'file_transfer' => :'BOOLEAN',
          :'feedback' => :'BOOLEAN',
          :'co_host' => :'BOOLEAN',
          :'polling' => :'BOOLEAN',
          :'attendee_on_hold' => :'BOOLEAN',
          :'annotation' => :'BOOLEAN',
          :'remote_control' => :'BOOLEAN',
          :'non_verbal_feedback' => :'BOOLEAN',
          :'breakout_room' => :'BOOLEAN',
          :'remote_support' => :'BOOLEAN',
          :'closed_caption' => :'BOOLEAN',
          :'group_hd' => :'BOOLEAN',
          :'virtual_background' => :'BOOLEAN',
          :'far_end_camera_control' => :'BOOLEAN',
          :'share_dual_camera' => :'BOOLEAN',
          :'attention_tracking' => :'BOOLEAN',
          :'waiting_room' => :'BOOLEAN',
          :'allow_live_streaming' => :'BOOLEAN',
          :'workplace_by_facebook' => :'BOOLEAN',
          :'custom_live_streaming' => :'BOOLEAN',
          :'custom_service_instructions' => :'String',
          :'show_meeting_control_toolbar' => :'BOOLEAN'
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
        else
          self.chat = false
        end

        if attributes.has_key?(:'private_chat')
          self.private_chat = attributes[:'private_chat']
        else
          self.private_chat = false
        end

        if attributes.has_key?(:'auto_saving_chat')
          self.auto_saving_chat = attributes[:'auto_saving_chat']
        else
          self.auto_saving_chat = false
        end

        if attributes.has_key?(:'entry_exit_chime')
          self.entry_exit_chime = attributes[:'entry_exit_chime']
        else
          self.entry_exit_chime = 'all'
        end

        if attributes.has_key?(:'record_play_voice')
          self.record_play_voice = attributes[:'record_play_voice']
        end

        if attributes.has_key?(:'file_transfer')
          self.file_transfer = attributes[:'file_transfer']
        else
          self.file_transfer = false
        end

        if attributes.has_key?(:'feedback')
          self.feedback = attributes[:'feedback']
        else
          self.feedback = false
        end

        if attributes.has_key?(:'co_host')
          self.co_host = attributes[:'co_host']
        else
          self.co_host = false
        end

        if attributes.has_key?(:'polling')
          self.polling = attributes[:'polling']
        else
          self.polling = false
        end

        if attributes.has_key?(:'attendee_on_hold')
          self.attendee_on_hold = attributes[:'attendee_on_hold']
        else
          self.attendee_on_hold = false
        end

        if attributes.has_key?(:'annotation')
          self.annotation = attributes[:'annotation']
        else
          self.annotation = false
        end

        if attributes.has_key?(:'remote_control')
          self.remote_control = attributes[:'remote_control']
        else
          self.remote_control = false
        end

        if attributes.has_key?(:'non_verbal_feedback')
          self.non_verbal_feedback = attributes[:'non_verbal_feedback']
        else
          self.non_verbal_feedback = false
        end

        if attributes.has_key?(:'breakout_room')
          self.breakout_room = attributes[:'breakout_room']
        else
          self.breakout_room = false
        end

        if attributes.has_key?(:'remote_support')
          self.remote_support = attributes[:'remote_support']
        else
          self.remote_support = false
        end

        if attributes.has_key?(:'closed_caption')
          self.closed_caption = attributes[:'closed_caption']
        else
          self.closed_caption = false
        end

        if attributes.has_key?(:'group_hd')
          self.group_hd = attributes[:'group_hd']
        else
          self.group_hd = false
        end

        if attributes.has_key?(:'virtual_background')
          self.virtual_background = attributes[:'virtual_background']
        else
          self.virtual_background = false
        end

        if attributes.has_key?(:'far_end_camera_control')
          self.far_end_camera_control = attributes[:'far_end_camera_control']
        else
          self.far_end_camera_control = false
        end

        if attributes.has_key?(:'share_dual_camera')
          self.share_dual_camera = attributes[:'share_dual_camera']
        else
          self.share_dual_camera = false
        end

        if attributes.has_key?(:'attention_tracking')
          self.attention_tracking = attributes[:'attention_tracking']
        else
          self.attention_tracking = false
        end

        if attributes.has_key?(:'waiting_room')
          self.waiting_room = attributes[:'waiting_room']
        else
          self.waiting_room = false
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

        if attributes.has_key?(:'show_meeting_control_toolbar')
          self.show_meeting_control_toolbar = attributes[:'show_meeting_control_toolbar']
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
        entry_exit_chime_validator = EnumAttributeValidator.new('String', ['host', 'all', 'none'])
        return false unless entry_exit_chime_validator.valid?(@entry_exit_chime)
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
          record_play_voice == o.record_play_voice &&
          file_transfer == o.file_transfer &&
          feedback == o.feedback &&
          co_host == o.co_host &&
          polling == o.polling &&
          attendee_on_hold == o.attendee_on_hold &&
          annotation == o.annotation &&
          remote_control == o.remote_control &&
          non_verbal_feedback == o.non_verbal_feedback &&
          breakout_room == o.breakout_room &&
          remote_support == o.remote_support &&
          closed_caption == o.closed_caption &&
          group_hd == o.group_hd &&
          virtual_background == o.virtual_background &&
          far_end_camera_control == o.far_end_camera_control &&
          share_dual_camera == o.share_dual_camera &&
          attention_tracking == o.attention_tracking &&
          waiting_room == o.waiting_room &&
          allow_live_streaming == o.allow_live_streaming &&
          workplace_by_facebook == o.workplace_by_facebook &&
          custom_live_streaming == o.custom_live_streaming &&
          custom_service_instructions == o.custom_service_instructions &&
          show_meeting_control_toolbar == o.show_meeting_control_toolbar
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [e2e_encryption, chat, private_chat, auto_saving_chat, entry_exit_chime, record_play_voice, file_transfer, feedback, co_host, polling, attendee_on_hold, annotation, remote_control, non_verbal_feedback, breakout_room, remote_support, closed_caption, group_hd, virtual_background, far_end_camera_control, share_dual_camera, attention_tracking, waiting_room, allow_live_streaming, workplace_by_facebook, custom_live_streaming, custom_service_instructions, show_meeting_control_toolbar].hash
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
