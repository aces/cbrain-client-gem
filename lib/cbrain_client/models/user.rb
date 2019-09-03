=begin
#CBRAIN API

#API for interacting with the CBRAIN Platform

OpenAPI spec version: 5.1.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module CbrainClient
  class User
    # Unique numerical ID for the user.
    attr_accessor :id

    # UNIX-style username.
    attr_accessor :login

    # Password field
    attr_accessor :password

    # Password field (generally same as 'password')
    attr_accessor :password_confirmation

    # Full name of the user.
    attr_accessor :full_name

    # email address of the user.
    attr_accessor :email

    # city where the user is located
    attr_accessor :city

    # country where the user is located
    attr_accessor :country

    # time-zone (should make it this an enum)
    attr_accessor :time_zone

    # Classification of user permission level
    attr_accessor :type

    # ID of the site affiliation for the user.
    attr_accessor :site_id

    # time of last connection by the user. (can be empty)
    attr_accessor :last_connected_at

    # Whether or not the account is locked.
    attr_accessor :account_locked

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'login' => :'login',
        :'password' => :'password',
        :'password_confirmation' => :'password_confirmation',
        :'full_name' => :'full_name',
        :'email' => :'email',
        :'city' => :'city',
        :'country' => :'country',
        :'time_zone' => :'time_zone',
        :'type' => :'type',
        :'site_id' => :'site_id',
        :'last_connected_at' => :'last_connected_at',
        :'account_locked' => :'account_locked'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'login' => :'String',
        :'password' => :'String',
        :'password_confirmation' => :'String',
        :'full_name' => :'String',
        :'email' => :'String',
        :'city' => :'String',
        :'country' => :'String',
        :'time_zone' => :'String',
        :'type' => :'String',
        :'site_id' => :'Integer',
        :'last_connected_at' => :'String',
        :'account_locked' => :'String'
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

      if attributes.has_key?(:'login')
        self.login = attributes[:'login']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'password_confirmation')
        self.password_confirmation = attributes[:'password_confirmation']
      end

      if attributes.has_key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'NormalUser'
      end

      if attributes.has_key?(:'site_id')
        self.site_id = attributes[:'site_id']
      end

      if attributes.has_key?(:'last_connected_at')
        self.last_connected_at = attributes[:'last_connected_at']
      end

      if attributes.has_key?(:'account_locked')
        self.account_locked = attributes[:'account_locked']
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
          login == o.login &&
          password == o.password &&
          password_confirmation == o.password_confirmation &&
          full_name == o.full_name &&
          email == o.email &&
          city == o.city &&
          country == o.country &&
          time_zone == o.time_zone &&
          type == o.type &&
          site_id == o.site_id &&
          last_connected_at == o.last_connected_at &&
          account_locked == o.account_locked
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, login, password, password_confirmation, full_name, email, city, country, time_zone, type, site_id, last_connected_at, account_locked].hash
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
        DateTime.parse(value)
      when :Date
        Date.parse(value)
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
        temp_model = CbrainClient.const_get(type).new
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
