=begin
#CBRAIN API

#API for interacting with the CBRAIN Platform

OpenAPI spec version: 5.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module CbrainClient

  class CbrainTask
    # Unique identifier for the Task.
    attr_accessor :id

    # The task type
    attr_accessor :type

    # ID of the User who created the Task.
    attr_accessor :user_id

    # ID of the group that this task is being run in.
    attr_accessor :group_id

    # ID of the Bourreau the Task was launched on.
    attr_accessor :bourreau_id

    # ID number that specifies which Tool Config to use. The Tool Config specifies environment variables and other system-specific scripts necessary for the Task to be run in the target environment.
    attr_accessor :tool_config_id

    # ID of the batch this task was launched as part of. Batches of tasks consist of the same task, with the same parameters, being run on many different input files.
    attr_accessor :batch_id

    # Parameters used as inputs to the scientific calculation associated with the task.
    attr_accessor :params

    # Current status of the task.
    attr_accessor :status

    # Date created.
    attr_accessor :created_at

    # Last updated.
    attr_accessor :updated_at

    # The number of times that this task was run.
    attr_accessor :run_number

    # ID of the Data Provider that contains the Userfile that represents the results of the task.
    attr_accessor :results_data_provider_id

    # size of workdirectory
    attr_accessor :cluster_workdir_size

    # Boolean variable that indicates whether the working directory of the task is available on the processing server or has been archived and is no longer accessible.
    attr_accessor :workdir_archived

    # ID of the userfile created as part of the archival process, if the working directory of the task has been archived.
    attr_accessor :workdir_archive_userfile_id

    # Description of the Task.
    attr_accessor :description


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'user_id' => :'user_id',
        :'group_id' => :'group_id',
        :'bourreau_id' => :'bourreau_id',
        :'tool_config_id' => :'tool_config_id',
        :'batch_id' => :'batch_id',
        :'params' => :'params',
        :'status' => :'status',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'run_number' => :'run_number',
        :'results_data_provider_id' => :'results_data_provider_id',
        :'cluster_workdir_size' => :'cluster_workdir_size',
        :'workdir_archived' => :'workdir_archived',
        :'workdir_archive_userfile_id' => :'workdir_archive_userfile_id',
        :'description' => :'description'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'type' => :'String',
        :'user_id' => :'Integer',
        :'group_id' => :'Integer',
        :'bourreau_id' => :'Integer',
        :'tool_config_id' => :'Integer',
        :'batch_id' => :'Integer',
        :'params' => :'Object',
        :'status' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'run_number' => :'Integer',
        :'results_data_provider_id' => :'Integer',
        :'cluster_workdir_size' => :'Integer',
        :'workdir_archived' => :'String',
        :'workdir_archive_userfile_id' => :'Integer',
        :'description' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.has_key?(:'group_id')
        self.group_id = attributes[:'group_id']
      end

      if attributes.has_key?(:'bourreau_id')
        self.bourreau_id = attributes[:'bourreau_id']
      end

      if attributes.has_key?(:'tool_config_id')
        self.tool_config_id = attributes[:'tool_config_id']
      end

      if attributes.has_key?(:'batch_id')
        self.batch_id = attributes[:'batch_id']
      end

      if attributes.has_key?(:'params')
        self.params = attributes[:'params']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'run_number')
        self.run_number = attributes[:'run_number']
      end

      if attributes.has_key?(:'results_data_provider_id')
        self.results_data_provider_id = attributes[:'results_data_provider_id']
      end

      if attributes.has_key?(:'cluster_workdir_size')
        self.cluster_workdir_size = attributes[:'cluster_workdir_size']
      end

      if attributes.has_key?(:'workdir_archived')
        self.workdir_archived = attributes[:'workdir_archived']
      end

      if attributes.has_key?(:'workdir_archive_userfile_id')
        self.workdir_archive_userfile_id = attributes[:'workdir_archive_userfile_id']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          user_id == o.user_id &&
          group_id == o.group_id &&
          bourreau_id == o.bourreau_id &&
          tool_config_id == o.tool_config_id &&
          batch_id == o.batch_id &&
          params == o.params &&
          status == o.status &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          run_number == o.run_number &&
          results_data_provider_id == o.results_data_provider_id &&
          cluster_workdir_size == o.cluster_workdir_size &&
          workdir_archived == o.workdir_archived &&
          workdir_archive_userfile_id == o.workdir_archive_userfile_id &&
          description == o.description
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, type, user_id, group_id, bourreau_id, tool_config_id, batch_id, params, status, created_at, updated_at, run_number, results_data_provider_id, cluster_workdir_size, workdir_archived, workdir_archive_userfile_id, description].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        value.compact.map{ |v| _to_hash(v) }
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