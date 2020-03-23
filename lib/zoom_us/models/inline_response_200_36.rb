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
    class InlineResponse20036
      # Meeting UUID.
      attr_accessor :uuid

      # Meeting ID.
      attr_accessor :id

      # Meeting type.
      attr_accessor :type

      # Meeting topic.
      attr_accessor :topic

      # User display name.
      attr_accessor :user_name

      # User email.
      attr_accessor :user_email

      # Meeting start time.
      attr_accessor :start_time

      # Meeting end time.
      attr_accessor :end_time

      # Meeting duration.
      attr_accessor :duration

      # Number of meeting minutes. This represents the total amount of meeting minutes attended by each participant including the host, for meetings hosted by the user. For instance if there were one host(named A) and one participant(named B) in a meeting, the value of total_minutes would be calculated as below:  **total_minutes** = Total Meeting Attendance Minutes of A + Total Meeting Attendance Minutes of B
      attr_accessor :total_minutes

      # Number of meeting participants.
      attr_accessor :participants_count

      # Tracking fields.
      attr_accessor :tracking_fields

      # Department of the host.
      attr_accessor :dept

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'uuid' => :'uuid',
          :'id' => :'id',
          :'type' => :'type',
          :'topic' => :'topic',
          :'user_name' => :'user_name',
          :'user_email' => :'user_email',
          :'start_time' => :'start_time',
          :'end_time' => :'end_time',
          :'duration' => :'duration',
          :'total_minutes' => :'total_minutes',
          :'participants_count' => :'participants_count',
          :'tracking_fields' => :'tracking_fields',
          :'dept' => :'dept'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'uuid' => :'String',
          :'id' => :'Integer',
          :'type' => :'Integer',
          :'topic' => :'String',
          :'user_name' => :'String',
          :'user_email' => :'String',
          :'start_time' => :'DateTime',
          :'end_time' => :'DateTime',
          :'duration' => :'Integer',
          :'total_minutes' => :'Integer',
          :'participants_count' => :'Integer',
          :'tracking_fields' => :'Array<InlineResponse20036TrackingFields>',
          :'dept' => :'String'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'uuid')
          self.uuid = attributes[:'uuid']
        end

        if attributes.has_key?(:'id')
          self.id = attributes[:'id']
        end

        if attributes.has_key?(:'type')
          self.type = attributes[:'type']
        end

        if attributes.has_key?(:'topic')
          self.topic = attributes[:'topic']
        end

        if attributes.has_key?(:'user_name')
          self.user_name = attributes[:'user_name']
        end

        if attributes.has_key?(:'user_email')
          self.user_email = attributes[:'user_email']
        end

        if attributes.has_key?(:'start_time')
          self.start_time = attributes[:'start_time']
        end

        if attributes.has_key?(:'end_time')
          self.end_time = attributes[:'end_time']
        end

        if attributes.has_key?(:'duration')
          self.duration = attributes[:'duration']
        end

        if attributes.has_key?(:'total_minutes')
          self.total_minutes = attributes[:'total_minutes']
        end

        if attributes.has_key?(:'participants_count')
          self.participants_count = attributes[:'participants_count']
        end

        if attributes.has_key?(:'tracking_fields')
          if (value = attributes[:'tracking_fields']).is_a?(Array)
            self.tracking_fields = value
          end
        end

        if attributes.has_key?(:'dept')
          self.dept = attributes[:'dept']
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
          uuid == o.uuid &&
          id == o.id &&
          type == o.type &&
          topic == o.topic &&
          user_name == o.user_name &&
          user_email == o.user_email &&
          start_time == o.start_time &&
          end_time == o.end_time &&
          duration == o.duration &&
          total_minutes == o.total_minutes &&
          participants_count == o.participants_count &&
          tracking_fields == o.tracking_fields &&
          dept == o.dept
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [uuid, id, type, topic, user_name, user_email, start_time, end_time, duration, total_minutes, participants_count, tracking_fields, dept].hash
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
