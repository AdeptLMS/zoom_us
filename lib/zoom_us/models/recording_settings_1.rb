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
    class RecordingSettings1
      # Determine how the meeting recording is shared.
      attr_accessor :share_recording

      # Only authenticated users can view.
      attr_accessor :recording_authentication

      # Authentication Options.
      attr_accessor :authentication_option

      # Authentication domains.
      attr_accessor :authentication_domains

      # Determine whether a viewer can download the recording file or not.
      attr_accessor :viewer_download

      # Enable password protection for the recording by setting a password.
      attr_accessor :password

      # Determine whether registration  isrequired to view the recording.
      attr_accessor :on_demand

      # Approval type for the registration.<br> `0`- Automatically approve the registration when a user registers.<br> `1` - Manually approve or deny the registration of a user.<br> `2` - No registration required to view the recording.
      attr_accessor :approval_type

      # Send an email to host when someone registers to view the recording. This applies for On-demand recordings only.
      attr_accessor :send_email_to_host

      # Show social share buttons on registration page. This applies for On-demand recordings only.
      attr_accessor :show_social_share_buttons

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
          :'share_recording' => :'share_recording',
          :'recording_authentication' => :'recording_authentication',
          :'authentication_option' => :'authentication_option',
          :'authentication_domains' => :'authentication_domains',
          :'viewer_download' => :'viewer_download',
          :'password' => :'password',
          :'on_demand' => :'on_demand',
          :'approval_type' => :'approval_type',
          :'send_email_to_host' => :'send_email_to_host',
          :'show_social_share_buttons' => :'show_social_share_buttons'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'share_recording' => :'String',
          :'recording_authentication' => :'BOOLEAN',
          :'authentication_option' => :'String',
          :'authentication_domains' => :'String',
          :'viewer_download' => :'BOOLEAN',
          :'password' => :'String',
          :'on_demand' => :'BOOLEAN',
          :'approval_type' => :'Integer',
          :'send_email_to_host' => :'BOOLEAN',
          :'show_social_share_buttons' => :'BOOLEAN'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'share_recording')
          self.share_recording = attributes[:'share_recording']
        end

        if attributes.has_key?(:'recording_authentication')
          self.recording_authentication = attributes[:'recording_authentication']
        end

        if attributes.has_key?(:'authentication_option')
          self.authentication_option = attributes[:'authentication_option']
        end

        if attributes.has_key?(:'authentication_domains')
          self.authentication_domains = attributes[:'authentication_domains']
        end

        if attributes.has_key?(:'viewer_download')
          self.viewer_download = attributes[:'viewer_download']
        end

        if attributes.has_key?(:'password')
          self.password = attributes[:'password']
        end

        if attributes.has_key?(:'on_demand')
          self.on_demand = attributes[:'on_demand']
        end

        if attributes.has_key?(:'approval_type')
          self.approval_type = attributes[:'approval_type']
        end

        if attributes.has_key?(:'send_email_to_host')
          self.send_email_to_host = attributes[:'send_email_to_host']
        end

        if attributes.has_key?(:'show_social_share_buttons')
          self.show_social_share_buttons = attributes[:'show_social_share_buttons']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if !@password.nil? && @password.to_s.length > 10
          invalid_properties.push('invalid value for "password", the character length must be smaller than or equal to 10.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        share_recording_validator = EnumAttributeValidator.new('String', ['publicly', 'internally', 'none'])
        return false unless share_recording_validator.valid?(@share_recording)
        return false if !@password.nil? && @password.to_s.length > 10
        true
      end

      # Custom attribute writer method checking allowed values (enum).
      # @param [Object] share_recording Object to be assigned
      def share_recording=(share_recording)
        validator = EnumAttributeValidator.new('String', ['publicly', 'internally', 'none'])
        unless validator.valid?(share_recording)
          fail ArgumentError, 'invalid value for "share_recording", must be one of #{validator.allowable_values}.'
        end
        @share_recording = share_recording
      end

      # Custom attribute writer method with validation
      # @param [Object] password Value to be assigned
      def password=(password)
        if !password.nil? && password.to_s.length > 10
          fail ArgumentError, 'invalid value for "password", the character length must be smaller than or equal to 10.'
        end

        @password = password
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
          share_recording == o.share_recording &&
          recording_authentication == o.recording_authentication &&
          authentication_option == o.authentication_option &&
          authentication_domains == o.authentication_domains &&
          viewer_download == o.viewer_download &&
          password == o.password &&
          on_demand == o.on_demand &&
          approval_type == o.approval_type &&
          send_email_to_host == o.send_email_to_host &&
          show_social_share_buttons == o.show_social_share_buttons
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [share_recording, recording_authentication, authentication_option, authentication_domains, viewer_download, password, on_demand, approval_type, send_email_to_host, show_social_share_buttons].hash
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
