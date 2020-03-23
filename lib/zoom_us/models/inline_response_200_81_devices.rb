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
    class InlineResponse20081Devices
      # Unique identifier of the device.
      attr_accessor :id

      # Name of the Zoom Room.
      attr_accessor :room_name

      # Type of the device. The value of this field can be one of the following:<br>`Zoom Rooms Computer`,<br> `Controller`, `Scheduling Display`, `Zoom Rooms Control System`, `Companion Whiteboard`
      attr_accessor :device_type

      # App version of Zoom Rooms.
      attr_accessor :app_version

      # Operating system of the device.
      attr_accessor :device_system

      # Status of the device. The value can be either `Online` or `Offline`.
      attr_accessor :status

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
          :'id' => :'id',
          :'room_name' => :'room_name',
          :'device_type' => :'device_type',
          :'app_version' => :'app_version',
          :'device_system' => :'device_system',
          :'status' => :'status'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'id' => :'String',
          :'room_name' => :'String',
          :'device_type' => :'String',
          :'app_version' => :'String',
          :'device_system' => :'String',
          :'status' => :'String'
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

        if attributes.has_key?(:'room_name')
          self.room_name = attributes[:'room_name']
        end

        if attributes.has_key?(:'device_type')
          self.device_type = attributes[:'device_type']
        end

        if attributes.has_key?(:'app_version')
          self.app_version = attributes[:'app_version']
        end

        if attributes.has_key?(:'device_system')
          self.device_system = attributes[:'device_system']
        end

        if attributes.has_key?(:'status')
          self.status = attributes[:'status']
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
        device_type_validator = EnumAttributeValidator.new('String', ['Zoom Rooms Computer', 'Controller', 'Scheduling Display', 'Zoom Rooms Control System', 'Companion Whiteboard'])
        return false unless device_type_validator.valid?(@device_type)
        status_validator = EnumAttributeValidator.new('String', ['Online', 'Offline'])
        return false unless status_validator.valid?(@status)
        true
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] device_type Object to be assigned
      def device_type=(device_type)
        validator = EnumAttributeValidator.new('String', ['Zoom Rooms Computer', 'Controller', 'Scheduling Display', 'Zoom Rooms Control System', 'Companion Whiteboard'])
        unless validator.valid?(device_type)
          fail ArgumentError, 'invalid value for "device_type", must be one of #{validator.allowable_values}.'
        end
        @device_type = device_type
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] status Object to be assigned
      def status=(status)
        validator = EnumAttributeValidator.new('String', ['Online', 'Offline'])
        unless validator.valid?(status)
          fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
        end
        @status = status
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
          id == o.id &&
          room_name == o.room_name &&
          device_type == o.device_type &&
          app_version == o.app_version &&
          device_system == o.device_system &&
          status == o.status
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [id, room_name, device_type, app_version, device_system, status].hash
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
