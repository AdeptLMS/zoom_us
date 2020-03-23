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
    class InlineResponse2001Phones
      # Unique Identifier of the SIP Phone.
      attr_accessor :id

      # The email address of the user to associate with the SIP Phone. Can add [.win, .mac, .android, .ipad, .iphone, .linux, .pc, .mobile, .pad] at the end of the email (ex. user@test.com.mac) to add accounts for different platforms for the same user.
      attr_accessor :user_email

      # The name or IP address of your provider’s SIP domain. (example: CDC.WEB).
      attr_accessor :domain

      # IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address.
      attr_accessor :register_server

      # Protocols supported by the SIP provider.<br> The value must be either `UDP`, `TCP`, `TLS`, `AUTO`.
      attr_accessor :transport_protocol

      # IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server, or empty.
      attr_accessor :proxy_server

      # IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address.
      attr_accessor :register_server2

      # Protocols supported by the SIP provider.<br> The value must be either `UDP`, `TCP`, `TLS`, `AUTO`.
      attr_accessor :transport_protocol2

      # IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server, or empty.
      attr_accessor :proxy_server2

      # IP address of the server that accepts REGISTER requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address.
      attr_accessor :register_server3

      # Protocols supported by the SIP provider.<br> The value must be either `UDP`, `TCP`, `TLS`, `AUTO`.
      attr_accessor :transport_protocol3

      # IP address of the proxy server for SIP requests. Note that if you are using the UDP transport protocol, the default port is 5060. If you are using UDP with a different port number, that port number must be included with the IP address. If you are not using a proxy server, this value can be the same as the Register Server, or empty.
      attr_accessor :proxy_server3

      # The number of minutes after which the SIP registration of the Zoom client user will expire, and the client will auto register to the SIP server.
      attr_accessor :registration_expire_time

      # The phone number associated with the user in the SIP account.
      attr_accessor :user_name

      # The password generated for the user in the SIP account.
      attr_accessor :password

      # Authorization name of the user  registered for SIP Phone.
      attr_accessor :authorization_name

      # The number to dial for checking voicemail.
      attr_accessor :voice_mail

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
          :'user_email' => :'user_email',
          :'domain' => :'domain',
          :'register_server' => :'register_server',
          :'transport_protocol' => :'transport_protocol',
          :'proxy_server' => :'proxy_server',
          :'register_server2' => :'register_server2',
          :'transport_protocol2' => :'transport_protocol2',
          :'proxy_server2' => :'proxy_server2',
          :'register_server3' => :'register_server3',
          :'transport_protocol3' => :'transport_protocol3',
          :'proxy_server3' => :'proxy_server3',
          :'registration_expire_time' => :'registration_expire_time',
          :'user_name' => :'user_name',
          :'password' => :'password',
          :'authorization_name' => :'authorization_name',
          :'voice_mail' => :'voice_mail'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'id' => :'String',
          :'user_email' => :'String',
          :'domain' => :'String',
          :'register_server' => :'String',
          :'transport_protocol' => :'String',
          :'proxy_server' => :'String',
          :'register_server2' => :'String',
          :'transport_protocol2' => :'String',
          :'proxy_server2' => :'String',
          :'register_server3' => :'String',
          :'transport_protocol3' => :'String',
          :'proxy_server3' => :'String',
          :'registration_expire_time' => :'Integer',
          :'user_name' => :'String',
          :'password' => :'String',
          :'authorization_name' => :'String',
          :'voice_mail' => :'String'
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

        if attributes.has_key?(:'user_email')
          self.user_email = attributes[:'user_email']
        end

        if attributes.has_key?(:'domain')
          self.domain = attributes[:'domain']
        end

        if attributes.has_key?(:'register_server')
          self.register_server = attributes[:'register_server']
        end

        if attributes.has_key?(:'transport_protocol')
          self.transport_protocol = attributes[:'transport_protocol']
        end

        if attributes.has_key?(:'proxy_server')
          self.proxy_server = attributes[:'proxy_server']
        end

        if attributes.has_key?(:'register_server2')
          self.register_server2 = attributes[:'register_server2']
        end

        if attributes.has_key?(:'transport_protocol2')
          self.transport_protocol2 = attributes[:'transport_protocol2']
        end

        if attributes.has_key?(:'proxy_server2')
          self.proxy_server2 = attributes[:'proxy_server2']
        end

        if attributes.has_key?(:'register_server3')
          self.register_server3 = attributes[:'register_server3']
        end

        if attributes.has_key?(:'transport_protocol3')
          self.transport_protocol3 = attributes[:'transport_protocol3']
        end

        if attributes.has_key?(:'proxy_server3')
          self.proxy_server3 = attributes[:'proxy_server3']
        end

        if attributes.has_key?(:'registration_expire_time')
          self.registration_expire_time = attributes[:'registration_expire_time']
        end

        if attributes.has_key?(:'user_name')
          self.user_name = attributes[:'user_name']
        end

        if attributes.has_key?(:'password')
          self.password = attributes[:'password']
        end

        if attributes.has_key?(:'authorization_name')
          self.authorization_name = attributes[:'authorization_name']
        end

        if attributes.has_key?(:'voice_mail')
          self.voice_mail = attributes[:'voice_mail']
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
        transport_protocol_validator = EnumAttributeValidator.new('String', ['UDP', 'TCP', 'TLS', 'AUTO'])
        return false unless transport_protocol_validator.valid?(@transport_protocol)
        transport_protocol2_validator = EnumAttributeValidator.new('String', ['UDP', 'TCP', 'TLS', 'AUTO'])
        return false unless transport_protocol2_validator.valid?(@transport_protocol2)
        transport_protocol3_validator = EnumAttributeValidator.new('String', ['UDP', 'TCP', 'TLS', 'AUTO'])
        return false unless transport_protocol3_validator.valid?(@transport_protocol3)
        true
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] transport_protocol Object to be assigned
      def transport_protocol=(transport_protocol)
        validator = EnumAttributeValidator.new('String', ['UDP', 'TCP', 'TLS', 'AUTO'])
        unless validator.valid?(transport_protocol)
          fail ArgumentError, 'invalid value for "transport_protocol", must be one of #{validator.allowable_values}.'
        end
        @transport_protocol = transport_protocol
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] transport_protocol2 Object to be assigned
      def transport_protocol2=(transport_protocol2)
        validator = EnumAttributeValidator.new('String', ['UDP', 'TCP', 'TLS', 'AUTO'])
        unless validator.valid?(transport_protocol2)
          fail ArgumentError, 'invalid value for "transport_protocol2", must be one of #{validator.allowable_values}.'
        end
        @transport_protocol2 = transport_protocol2
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] transport_protocol3 Object to be assigned
      def transport_protocol3=(transport_protocol3)
        validator = EnumAttributeValidator.new('String', ['UDP', 'TCP', 'TLS', 'AUTO'])
        unless validator.valid?(transport_protocol3)
          fail ArgumentError, 'invalid value for "transport_protocol3", must be one of #{validator.allowable_values}.'
        end
        @transport_protocol3 = transport_protocol3
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
          id == o.id &&
          user_email == o.user_email &&
          domain == o.domain &&
          register_server == o.register_server &&
          transport_protocol == o.transport_protocol &&
          proxy_server == o.proxy_server &&
          register_server2 == o.register_server2 &&
          transport_protocol2 == o.transport_protocol2 &&
          proxy_server2 == o.proxy_server2 &&
          register_server3 == o.register_server3 &&
          transport_protocol3 == o.transport_protocol3 &&
          proxy_server3 == o.proxy_server3 &&
          registration_expire_time == o.registration_expire_time &&
          user_name == o.user_name &&
          password == o.password &&
          authorization_name == o.authorization_name &&
          voice_mail == o.voice_mail
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [id, user_email, domain, register_server, transport_protocol, proxy_server, register_server2, transport_protocol2, proxy_server2, register_server3, transport_protocol3, proxy_server3, registration_expire_time, user_name, password, authorization_name, voice_mail].hash
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
