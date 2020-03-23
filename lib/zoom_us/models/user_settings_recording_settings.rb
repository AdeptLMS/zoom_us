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
    class UserSettingsRecordingSettings
      # Local recording.
      attr_accessor :local_recording

      # Cloud recording.
      attr_accessor :cloud_recording

      # Record the active speaker view.
      attr_accessor :record_speaker_view

      # Record the gallery view.
      attr_accessor :record_gallery_view

      # Record an audio only file.
      attr_accessor :record_audio_file

      # Save chat text from the meeting.
      attr_accessor :save_chat_text

      # Show timestamp on video.
      attr_accessor :show_timestamp

      # Audio transcript.
      attr_accessor :recording_audio_transcript

      # Automatic recording:<br>`local` - Record on local.<br>`cloud` - Record on cloud.<br>`none` - Disabled.
      attr_accessor :auto_recording

      # Host can pause/stop the auto recording in the cloud.
      attr_accessor :host_pause_stop_recording

      # Auto delete cloud recordings.
      attr_accessor :auto_delete_cmr

      # A specified number of days of auto delete cloud recordings.
      attr_accessor :auto_delete_cmr_days

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
          :'local_recording' => :'local_recording',
          :'cloud_recording' => :'cloud_recording',
          :'record_speaker_view' => :'record_speaker_view',
          :'record_gallery_view' => :'record_gallery_view',
          :'record_audio_file' => :'record_audio_file',
          :'save_chat_text' => :'save_chat_text',
          :'show_timestamp' => :'show_timestamp',
          :'recording_audio_transcript' => :'recording_audio_transcript',
          :'auto_recording' => :'auto_recording',
          :'host_pause_stop_recording' => :'host_pause_stop_recording',
          :'auto_delete_cmr' => :'auto_delete_cmr',
          :'auto_delete_cmr_days' => :'auto_delete_cmr_days'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'local_recording' => :'BOOLEAN',
          :'cloud_recording' => :'BOOLEAN',
          :'record_speaker_view' => :'BOOLEAN',
          :'record_gallery_view' => :'BOOLEAN',
          :'record_audio_file' => :'BOOLEAN',
          :'save_chat_text' => :'BOOLEAN',
          :'show_timestamp' => :'BOOLEAN',
          :'recording_audio_transcript' => :'BOOLEAN',
          :'auto_recording' => :'String',
          :'host_pause_stop_recording' => :'BOOLEAN',
          :'auto_delete_cmr' => :'BOOLEAN',
          :'auto_delete_cmr_days' => :'Integer'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'local_recording')
          self.local_recording = attributes[:'local_recording']
        end

        if attributes.has_key?(:'cloud_recording')
          self.cloud_recording = attributes[:'cloud_recording']
        else
          self.cloud_recording = false
        end

        if attributes.has_key?(:'record_speaker_view')
          self.record_speaker_view = attributes[:'record_speaker_view']
        else
          self.record_speaker_view = false
        end

        if attributes.has_key?(:'record_gallery_view')
          self.record_gallery_view = attributes[:'record_gallery_view']
        else
          self.record_gallery_view = false
        end

        if attributes.has_key?(:'record_audio_file')
          self.record_audio_file = attributes[:'record_audio_file']
        else
          self.record_audio_file = false
        end

        if attributes.has_key?(:'save_chat_text')
          self.save_chat_text = attributes[:'save_chat_text']
        else
          self.save_chat_text = false
        end

        if attributes.has_key?(:'show_timestamp')
          self.show_timestamp = attributes[:'show_timestamp']
        else
          self.show_timestamp = false
        end

        if attributes.has_key?(:'recording_audio_transcript')
          self.recording_audio_transcript = attributes[:'recording_audio_transcript']
        end

        if attributes.has_key?(:'auto_recording')
          self.auto_recording = attributes[:'auto_recording']
        else
          self.auto_recording = 'local'
        end

        if attributes.has_key?(:'host_pause_stop_recording')
          self.host_pause_stop_recording = attributes[:'host_pause_stop_recording']
        else
          self.host_pause_stop_recording = false
        end

        if attributes.has_key?(:'auto_delete_cmr')
          self.auto_delete_cmr = attributes[:'auto_delete_cmr']
        else
          self.auto_delete_cmr = false
        end

        if attributes.has_key?(:'auto_delete_cmr_days')
          self.auto_delete_cmr_days = attributes[:'auto_delete_cmr_days']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if !@auto_delete_cmr_days.nil? && @auto_delete_cmr_days > 60
          invalid_properties.push('invalid value for "auto_delete_cmr_days", must be smaller than or equal to 60.')
        end

        if !@auto_delete_cmr_days.nil? && @auto_delete_cmr_days < 1
          invalid_properties.push('invalid value for "auto_delete_cmr_days", must be greater than or equal to 1.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        auto_recording_validator = EnumAttributeValidator.new('String', ['local', 'cloud', 'none'])
        return false unless auto_recording_validator.valid?(@auto_recording)
        return false if !@auto_delete_cmr_days.nil? && @auto_delete_cmr_days > 60
        return false if !@auto_delete_cmr_days.nil? && @auto_delete_cmr_days < 1
        true
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] auto_recording Object to be assigned
      def auto_recording=(auto_recording)
        validator = EnumAttributeValidator.new('String', ['local', 'cloud', 'none'])
        unless validator.valid?(auto_recording)
          fail ArgumentError, 'invalid value for "auto_recording", must be one of #{validator.allowable_values}.'
        end
        @auto_recording = auto_recording
      end

      # Custom attribute writer method with validation
      # @param [Object] auto_delete_cmr_days Value to be assigned
      def auto_delete_cmr_days=(auto_delete_cmr_days)
        if !auto_delete_cmr_days.nil? && auto_delete_cmr_days > 60
          fail ArgumentError, 'invalid value for "auto_delete_cmr_days", must be smaller than or equal to 60.'
        end

        if !auto_delete_cmr_days.nil? && auto_delete_cmr_days < 1
          fail ArgumentError, 'invalid value for "auto_delete_cmr_days", must be greater than or equal to 1.'
        end

        @auto_delete_cmr_days = auto_delete_cmr_days
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
          local_recording == o.local_recording &&
          cloud_recording == o.cloud_recording &&
          record_speaker_view == o.record_speaker_view &&
          record_gallery_view == o.record_gallery_view &&
          record_audio_file == o.record_audio_file &&
          save_chat_text == o.save_chat_text &&
          show_timestamp == o.show_timestamp &&
          recording_audio_transcript == o.recording_audio_transcript &&
          auto_recording == o.auto_recording &&
          host_pause_stop_recording == o.host_pause_stop_recording &&
          auto_delete_cmr == o.auto_delete_cmr &&
          auto_delete_cmr_days == o.auto_delete_cmr_days
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [local_recording, cloud_recording, record_speaker_view, record_gallery_view, record_audio_file, save_chat_text, show_timestamp, recording_audio_transcript, auto_recording, host_pause_stop_recording, auto_delete_cmr, auto_delete_cmr_days].hash
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
