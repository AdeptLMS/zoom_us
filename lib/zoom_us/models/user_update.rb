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
    # The user update object represents a user on Zoom.
    class UserUpdate
      # User's first name. Cannot contain more than 5 Chinese characters.
      attr_accessor :first_name

      # User's last name. Cannot contain more than 5 Chinese characters.
      attr_accessor :last_name

      # User types:<br>`1` - Basic.<br>`2` - Licensed.<br>`3` - On-prem.
      attr_accessor :type

      # Personal meeting ID: length must be 10.
      attr_accessor :pmi

      # Use Personal Meeting ID for instant meetings.
      attr_accessor :use_pmi

      # The time zone ID for a user profile. For this parameter value please refer to the ID value in the [timezone](https://marketplace.zoom.us/docs/api-reference/other-references/abbreviation-lists#timezones) list.
      attr_accessor :timezone

      # language
      attr_accessor :language

      # Department for user profile: use for report.
      attr_accessor :dept

      # Personal meeting room name.
      attr_accessor :vanity_name

      # Host key. It should be a 6-10 digit number.
      attr_accessor :host_key

      # Kaltura user ID.
      attr_accessor :cms_user_id

      # User's job title.
      attr_accessor :job_title

      # User's company.
      attr_accessor :company

      # User's location.
      attr_accessor :location

      # Phone number of the user. To update a phone number, you must also provide the `phone_country` field.
      attr_accessor :phone_number

      # [Country ID](https://marketplace.zoom.us/docs/api-reference/other-references/abbreviation-lists#countries) of the phone number. For example, if the phone number provided in the `phone_number` field is a Brazil based number, the value of the `phone_country` field should be `BR`.
      attr_accessor :phone_country

      # Attribute mapping from ruby-style variable name to JSON key.
      def self.attribute_map
        {
          :'first_name' => :'first_name',
          :'last_name' => :'last_name',
          :'type' => :'type',
          :'pmi' => :'pmi',
          :'use_pmi' => :'use_pmi',
          :'timezone' => :'timezone',
          :'language' => :'language',
          :'dept' => :'dept',
          :'vanity_name' => :'vanity_name',
          :'host_key' => :'host_key',
          :'cms_user_id' => :'cms_user_id',
          :'job_title' => :'job_title',
          :'company' => :'company',
          :'location' => :'location',
          :'phone_number' => :'phone_number',
          :'phone_country' => :'phone_country'
        }
      end

      # Attribute type mapping.
      def self.swagger_types
        {
          :'first_name' => :'String',
          :'last_name' => :'String',
          :'type' => :'Integer',
          :'pmi' => :'Integer',
          :'use_pmi' => :'BOOLEAN',
          :'timezone' => :'String',
          :'language' => :'String',
          :'dept' => :'String',
          :'vanity_name' => :'String',
          :'host_key' => :'String',
          :'cms_user_id' => :'String',
          :'job_title' => :'String',
          :'company' => :'String',
          :'location' => :'String',
          :'phone_number' => :'String',
          :'phone_country' => :'String'
        }
      end

      # Initializes the object
      # @param [Hash] attributes Model attributes in the form of hash
      def initialize(attributes = {})
        return unless attributes.is_a?(Hash)

        # convert string to symbol for hash key
        attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

        if attributes.has_key?(:'first_name')
          self.first_name = attributes[:'first_name']
        end

        if attributes.has_key?(:'last_name')
          self.last_name = attributes[:'last_name']
        end

        if attributes.has_key?(:'type')
          self.type = attributes[:'type']
        end

        if attributes.has_key?(:'pmi')
          self.pmi = attributes[:'pmi']
        end

        if attributes.has_key?(:'use_pmi')
          self.use_pmi = attributes[:'use_pmi']
        else
          self.use_pmi = false
        end

        if attributes.has_key?(:'timezone')
          self.timezone = attributes[:'timezone']
        end

        if attributes.has_key?(:'language')
          self.language = attributes[:'language']
        end

        if attributes.has_key?(:'dept')
          self.dept = attributes[:'dept']
        end

        if attributes.has_key?(:'vanity_name')
          self.vanity_name = attributes[:'vanity_name']
        end

        if attributes.has_key?(:'host_key')
          self.host_key = attributes[:'host_key']
        end

        if attributes.has_key?(:'cms_user_id')
          self.cms_user_id = attributes[:'cms_user_id']
        end

        if attributes.has_key?(:'job_title')
          self.job_title = attributes[:'job_title']
        end

        if attributes.has_key?(:'company')
          self.company = attributes[:'company']
        end

        if attributes.has_key?(:'location')
          self.location = attributes[:'location']
        end

        if attributes.has_key?(:'phone_number')
          self.phone_number = attributes[:'phone_number']
        end

        if attributes.has_key?(:'phone_country')
          self.phone_country = attributes[:'phone_country']
        end
      end

      # Show invalid properties with the reasons. Usually used together with valid?
      # @return Array for valid properties with the reasons
      def list_invalid_properties
        invalid_properties = Array.new
        if !@first_name.nil? && @first_name.to_s.length > 64
          invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 64.')
        end

        if !@last_name.nil? && @last_name.to_s.length > 64
          invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 64.')
        end

        if !@host_key.nil? && @host_key.to_s.length > 10
          invalid_properties.push('invalid value for "host_key", the character length must be smaller than or equal to 10.')
        end

        if !@host_key.nil? && @host_key.to_s.length < 6
          invalid_properties.push('invalid value for "host_key", the character length must be great than or equal to 6.')
        end

        if !@job_title.nil? && @job_title.to_s.length > 128
          invalid_properties.push('invalid value for "job_title", the character length must be smaller than or equal to 128.')
        end

        if !@company.nil? && @company.to_s.length > 255
          invalid_properties.push('invalid value for "company", the character length must be smaller than or equal to 255.')
        end

        if !@location.nil? && @location.to_s.length > 256
          invalid_properties.push('invalid value for "location", the character length must be smaller than or equal to 256.')
        end

        invalid_properties
      end

      # Check to see if the all the properties in the model are valid
      # @return true if the model is valid
      def valid?
        return false if !@first_name.nil? && @first_name.to_s.length > 64
        return false if !@last_name.nil? && @last_name.to_s.length > 64
        return false if !@host_key.nil? && @host_key.to_s.length > 10
        return false if !@host_key.nil? && @host_key.to_s.length < 6
        return false if !@job_title.nil? && @job_title.to_s.length > 128
        return false if !@company.nil? && @company.to_s.length > 255
        return false if !@location.nil? && @location.to_s.length > 256
        true
      end

      # Custom attribute writer method with validation
      # @param [Object] first_name Value to be assigned
      def first_name=(first_name)
        if !first_name.nil? && first_name.to_s.length > 64
          fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 64.'
        end

        @first_name = first_name
      end

      # Custom attribute writer method with validation
      # @param [Object] last_name Value to be assigned
      def last_name=(last_name)
        if !last_name.nil? && last_name.to_s.length > 64
          fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 64.'
        end

        @last_name = last_name
      end

      # Custom attribute writer method with validation
      # @param [Object] host_key Value to be assigned
      def host_key=(host_key)
        if !host_key.nil? && host_key.to_s.length > 10
          fail ArgumentError, 'invalid value for "host_key", the character length must be smaller than or equal to 10.'
        end

        if !host_key.nil? && host_key.to_s.length < 6
          fail ArgumentError, 'invalid value for "host_key", the character length must be great than or equal to 6.'
        end

        @host_key = host_key
      end

      # Custom attribute writer method with validation
      # @param [Object] job_title Value to be assigned
      def job_title=(job_title)
        if !job_title.nil? && job_title.to_s.length > 128
          fail ArgumentError, 'invalid value for "job_title", the character length must be smaller than or equal to 128.'
        end

        @job_title = job_title
      end

      # Custom attribute writer method with validation
      # @param [Object] company Value to be assigned
      def company=(company)
        if !company.nil? && company.to_s.length > 255
          fail ArgumentError, 'invalid value for "company", the character length must be smaller than or equal to 255.'
        end

        @company = company
      end

      # Custom attribute writer method with validation
      # @param [Object] location Value to be assigned
      def location=(location)
        if !location.nil? && location.to_s.length > 256
          fail ArgumentError, 'invalid value for "location", the character length must be smaller than or equal to 256.'
        end

        @location = location
      end

      # Checks equality by comparing each attribute.
      # @param [Object] Object to be compared
      def ==(o)
        return true if self.equal?(o)
        self.class == o.class &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          type == o.type &&
          pmi == o.pmi &&
          use_pmi == o.use_pmi &&
          timezone == o.timezone &&
          language == o.language &&
          dept == o.dept &&
          vanity_name == o.vanity_name &&
          host_key == o.host_key &&
          cms_user_id == o.cms_user_id &&
          job_title == o.job_title &&
          company == o.company &&
          location == o.location &&
          phone_number == o.phone_number &&
          phone_country == o.phone_country
      end

      # @see the `==` method
      # @param [Object] Object to be compared
      def eql?(o)
        self == o
      end

      # Calculates hash code according to all attributes.
      # @return [Fixnum] Hash code
      def hash
        [first_name, last_name, type, pmi, use_pmi, timezone, language, dept, vanity_name, host_key, cms_user_id, job_title, company, location, phone_number, phone_country].hash
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
