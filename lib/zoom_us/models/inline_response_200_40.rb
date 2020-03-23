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
    class InlineResponse20040
      # The next page token is used to paginate through large result sets. A next page token will be returned whenever the set of available results exceeds the current page size. The expiration period for this token is 15 minutes.
      attr_accessor :next_page_token

      # The number of pages returned for the request made.
      attr_accessor :page_count

      # The number of records returned within a single API call.
      attr_accessor :page_size

      # Array of webinar participant objects.
      attr_accessor :participants

      # The number of all records available across pages.
      attr_accessor :total_records

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'next_page_token' => :'next_page_token',
          :'page_count' => :'page_count',
          :'page_size' => :'page_size',
          :'participants' => :'participants',
          :'total_records' => :'total_records'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'next_page_token' => :'String',
          :'page_count' => :'Integer',
          :'page_size' => :'Integer',
          :'participants' => :'Array<InlineResponse20040Participants>',
          :'total_records' => :'Integer'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'next_page_token')
          self.next_page_token = attributes[:'next_page_token']
        end

        if attributes.has_key?(:'page_count')
          self.page_count = attributes[:'page_count']
        end

        if attributes.has_key?(:'page_size')
          self.page_size = attributes[:'page_size']
        end

        if attributes.has_key?(:'participants')
          if (value = attributes[:'participants']).is_a?(Array)
            self.participants = value
          end
        end

        if attributes.has_key?(:'total_records')
          self.total_records = attributes[:'total_records']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if !@page_size.nil? && @page_size > 300
          invalid_properties.push('invalid value for "page_size", must be smaller than or equal to 300.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return false if !@page_size.nil? && @page_size > 300
        true
      end

      # Custom attribute writer method with validation
      # @param [Object] page_size Value to be assigned
      def page_size=(page_size)
        if !page_size.nil? && page_size > 300
          fail ArgumentError, 'invalid value for "page_size", must be smaller than or equal to 300.'
        end

        @page_size = page_size
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
          next_page_token == o.next_page_token &&
          page_count == o.page_count &&
          page_size == o.page_size &&
          participants == o.participants &&
          total_records == o.total_records
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [next_page_token, page_count, page_size, participants, total_records].hash
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
