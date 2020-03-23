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
    class InlineResponse20064Recordings
      # ID of recording
      attr_accessor :id

      # Number of caller
      attr_accessor :caller_number

      # Type of caller's number. 1 - internal | 2 - external
      attr_accessor :caller_number_type

      # Contact name of caller
      attr_accessor :caller_name

      # Number of callee
      attr_accessor :callee_number

      # Type of callee's number. 1 - internal | 2 - external
      attr_accessor :callee_number_type

      # Contact name of callee
      attr_accessor :callee_name

      # Direction of the call. \"inbound\" | \"outbound\"
      attr_accessor :direction

      # Duration of the call
      attr_accessor :duration

      # Download url for the recording. For security purposes, you must provide an OAuth access token in the auth header to download the recording file using this url. <br>  Example request:<br> ``` curl --request GET \\   --url {download_url} \\   --header 'authorization: Bearer {access_token} \\   --header 'content-type: application/json' ```
      attr_accessor :download_url

      # Date and time at which the record is received
      attr_accessor :date_time

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'id' => :'id',
          :'caller_number' => :'caller_number',
          :'caller_number_type' => :'caller_number_type',
          :'caller_name' => :'caller_name',
          :'callee_number' => :'callee_number',
          :'callee_number_type' => :'callee_number_type',
          :'callee_name' => :'callee_name',
          :'direction' => :'direction',
          :'duration' => :'duration',
          :'download_url' => :'download_url',
          :'date_time' => :'date_time'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'id' => :'String',
          :'caller_number' => :'String',
          :'caller_number_type' => :'String',
          :'caller_name' => :'String',
          :'callee_number' => :'String',
          :'callee_number_type' => :'String',
          :'callee_name' => :'String',
          :'direction' => :'String',
          :'duration' => :'String',
          :'download_url' => :'String',
          :'date_time' => :'String'
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

        if attributes.has_key?(:'caller_number')
          self.caller_number = attributes[:'caller_number']
        end

        if attributes.has_key?(:'caller_number_type')
          self.caller_number_type = attributes[:'caller_number_type']
        end

        if attributes.has_key?(:'caller_name')
          self.caller_name = attributes[:'caller_name']
        end

        if attributes.has_key?(:'callee_number')
          self.callee_number = attributes[:'callee_number']
        end

        if attributes.has_key?(:'callee_number_type')
          self.callee_number_type = attributes[:'callee_number_type']
        end

        if attributes.has_key?(:'callee_name')
          self.callee_name = attributes[:'callee_name']
        end

        if attributes.has_key?(:'direction')
          self.direction = attributes[:'direction']
        end

        if attributes.has_key?(:'duration')
          self.duration = attributes[:'duration']
        end

        if attributes.has_key?(:'download_url')
          self.download_url = attributes[:'download_url']
        end

        if attributes.has_key?(:'date_time')
          self.date_time = attributes[:'date_time']
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
          caller_number == o.caller_number &&
          caller_number_type == o.caller_number_type &&
          caller_name == o.caller_name &&
          callee_number == o.callee_number &&
          callee_number_type == o.callee_number_type &&
          callee_name == o.callee_name &&
          direction == o.direction &&
          duration == o.duration &&
          download_url == o.download_url &&
          date_time == o.date_time
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [id, caller_number, caller_number_type, caller_name, callee_number, callee_number_type, callee_name, direction, duration, download_url, date_time].hash
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
