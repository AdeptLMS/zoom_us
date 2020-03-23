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
    # Recording file object.
    class Recording
      # The recording file ID. Included in the response of general query.
      attr_accessor :id

      # The meeting ID.
      attr_accessor :meeting_id

      # The recording start time.
      attr_accessor :recording_start

      # The recording end time. Response in general query.
      attr_accessor :recording_end

      # The recording file type. The value of this field could be one of the following:<br> `MP4`: Video file of the recording.<br>`M4A` Audio-only file of the recording.<br>`TIMELINE`: Timestamp file of the recording.<br> `TRANSCRIPT`: Transcription file of the recording.<br> `CHAT`: A TXT file containing in-meeting chat messages that were sent during the meeting.<br>`CC`: File containing closed captions of the recording.<br><br> A recording file object with file type of either `CC` or `TIMELINE` **does not have** the following properties:<br>  `id`, `status`, `file_size`, `recording_type`, and `play_url`.
      attr_accessor :file_type

      # The recording file size.
      attr_accessor :file_size

      # The URL using which a recording file can be played.
      attr_accessor :play_url

      # The URL using which the recording file can be downloaded. To access a private or password protected cloud recording, you must use a [Zoom JWT App Type](https://marketplace.zoom.us/docs/guides/getting-started/app-types/create-jwt-app). USe the generated JWT token as the value of the `access_token` query parameter and include this query parameter at the end of the URL as shown in the example. <br> Example: `https://api.zoom.us/recording/download/{{ Download Path }}?access_token={{ JWT Token }}`
      attr_accessor :download_url

      # The recording status.
      attr_accessor :status

      # The time at which recording was deleted. Returned in the response only for trash query.
      attr_accessor :deleted_time

      # The recording type. The value of this field can be one of the following:<br>`shared_screen_with_speaker_view(CC)`<br>`shared_screen_with_speaker_view`<br>`shared_screen_with_gallery_view`<br>`speaker_view`<br>`gallery_view`<br>`shared_screen`<br>`audio_only`<br>`audio_transcript`<br>`chat_file`<br>`TIMELINE`
      attr_accessor :recording_type

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'meeting_id' => :'meeting_id',
          :'recording_start' => :'recording_start',
          :'recording_end' => :'recording_end',
          :'file_type' => :'file_type',
          :'file_size' => :'file_size',
          :'play_url' => :'play_url',
          :'download_url' => :'download_url',
          :'status' => :'status',
          :'deleted_time' => :'deleted_time',
          :'recording_type' => :'recording_type'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'id' => :'String',
          :'meeting_id' => :'String',
          :'recording_start' => :'String',
          :'recording_end' => :'String',
          :'file_type' => :'String',
          :'file_size' => :'Float',
          :'play_url' => :'String',
          :'download_url' => :'String',
          :'status' => :'String',
          :'deleted_time' => :'String',
          :'recording_type' => :'String'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'id')
          self.id = attributes[:'id']
        end

        if attributes.has_key?(:'meeting_id')
          self.meeting_id = attributes[:'meeting_id']
        end

        if attributes.has_key?(:'recording_start')
          self.recording_start = attributes[:'recording_start']
        end

        if attributes.has_key?(:'recording_end')
          self.recording_end = attributes[:'recording_end']
        end

        if attributes.has_key?(:'file_type')
          self.file_type = attributes[:'file_type']
        end

        if attributes.has_key?(:'file_size')
          self.file_size = attributes[:'file_size']
        end

        if attributes.has_key?(:'play_url')
          self.play_url = attributes[:'play_url']
        end

        if attributes.has_key?(:'download_url')
          self.download_url = attributes[:'download_url']
        end

        if attributes.has_key?(:'status')
          self.status = attributes[:'status']
        end

        if attributes.has_key?(:'deleted_time')
          self.deleted_time = attributes[:'deleted_time']
        end

        if attributes.has_key?(:'recording_type')
          self.recording_type = attributes[:'recording_type']
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
          id == o.id &&
          meeting_id == o.meeting_id &&
          recording_start == o.recording_start &&
          recording_end == o.recording_end &&
          file_type == o.file_type &&
          file_size == o.file_size &&
          play_url == o.play_url &&
          download_url == o.download_url &&
          status == o.status &&
          deleted_time == o.deleted_time &&
          recording_type == o.recording_type
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [id, meeting_id, recording_start, recording_end, file_type, file_size, play_url, download_url, status, deleted_time, recording_type].hash
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
