=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class LoggingSftpResponse
    # The name for the real-time logging configuration.
    attr_accessor :name

    # Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`. 
    attr_accessor :placement

    # The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  
    attr_accessor :format_version

    # The name of an existing condition in the configured endpoint, or leave blank to always execute.
    attr_accessor :response_condition

    # A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats).
    attr_accessor :format

    # How the message should be formatted.
    attr_accessor :message_type

    # A timestamp format
    attr_accessor :timestamp_format

    # How frequently log files are finalized so they can be available for reading (in seconds).
    attr_accessor :period

    # What level of gzip encoding to have when sending logs (default `0`, no compression). If an explicit non-zero value is set, then `compression_codec` will default to \"gzip.\" Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    attr_accessor :gzip_level

    # The codec used for compression of your logs. Valid values are `zstd`, `snappy`, and `gzip`. If the specified codec is \"gzip\", `gzip_level` will default to 3. To specify a different level, leave `compression_codec` blank and explicitly set the level using `gzip_level`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error.
    attr_accessor :compression_codec

    # A hostname or IPv4 address.
    attr_accessor :address

    # The port number.
    attr_accessor :port

    # The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
    attr_accessor :password

    # The path to upload logs to.
    attr_accessor :path

    # A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    attr_accessor :public_key

    # The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference.
    attr_accessor :secret_key

    # A list of host keys for all hosts we can connect to over SFTP.
    attr_accessor :ssh_known_hosts

    # The username for the server.
    attr_accessor :user

    # Date and time in ISO 8601 format.
    attr_accessor :created_at

    # Date and time in ISO 8601 format.
    attr_accessor :deleted_at

    # Date and time in ISO 8601 format.
    attr_accessor :updated_at

    attr_accessor :service_id

    attr_accessor :version

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
        :'name' => :'name',
        :'placement' => :'placement',
        :'format_version' => :'format_version',
        :'response_condition' => :'response_condition',
        :'format' => :'format',
        :'message_type' => :'message_type',
        :'timestamp_format' => :'timestamp_format',
        :'period' => :'period',
        :'gzip_level' => :'gzip_level',
        :'compression_codec' => :'compression_codec',
        :'address' => :'address',
        :'port' => :'port',
        :'password' => :'password',
        :'path' => :'path',
        :'public_key' => :'public_key',
        :'secret_key' => :'secret_key',
        :'ssh_known_hosts' => :'ssh_known_hosts',
        :'user' => :'user',
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'updated_at' => :'updated_at',
        :'service_id' => :'service_id',
        :'version' => :'version'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'name' => :'String',
        :'placement' => :'String',
        :'format_version' => :'Integer',
        :'response_condition' => :'String',
        :'format' => :'String',
        :'message_type' => :'String',
        :'timestamp_format' => :'String',
        :'period' => :'Integer',
        :'gzip_level' => :'Integer',
        :'compression_codec' => :'String',
        :'address' => :'String',
        :'port' => :'Object',
        :'password' => :'String',
        :'path' => :'String',
        :'public_key' => :'String',
        :'secret_key' => :'String',
        :'ssh_known_hosts' => :'String',
        :'user' => :'String',
        :'created_at' => :'Time',
        :'deleted_at' => :'Time',
        :'updated_at' => :'Time',
        :'service_id' => :'String',
        :'version' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'placement',
        :'response_condition',
        :'timestamp_format',
        :'port',
        :'path',
        :'public_key',
        :'secret_key',
        :'created_at',
        :'deleted_at',
        :'updated_at',
        :'service_id',
        :'version'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.fastly_all_of
      [
      :'LoggingSftp',
      :'ServiceIdAndVersion',
      :'Timestamps'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::LoggingSftpResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::LoggingSftpResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'placement')
        self.placement = attributes[:'placement']
      end

      if attributes.key?(:'format_version')
        self.format_version = attributes[:'format_version']
      else
        self.format_version = FORMAT_VERSION::v2
      end

      if attributes.key?(:'response_condition')
        self.response_condition = attributes[:'response_condition']
      end

      if attributes.key?(:'format')
        self.format = attributes[:'format']
      else
        self.format = '%h %l %u %t \"%r\" %&gt;s %b'
      end

      if attributes.key?(:'message_type')
        self.message_type = attributes[:'message_type']
      else
        self.message_type = 'classic'
      end

      if attributes.key?(:'timestamp_format')
        self.timestamp_format = attributes[:'timestamp_format']
      end

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      else
        self.period = 3600
      end

      if attributes.key?(:'gzip_level')
        self.gzip_level = attributes[:'gzip_level']
      else
        self.gzip_level = 0
      end

      if attributes.key?(:'compression_codec')
        self.compression_codec = attributes[:'compression_codec']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      else
        self.path = 'null'
      end

      if attributes.key?(:'public_key')
        self.public_key = attributes[:'public_key']
      else
        self.public_key = 'null'
      end

      if attributes.key?(:'secret_key')
        self.secret_key = attributes[:'secret_key']
      else
        self.secret_key = 'null'
      end

      if attributes.key?(:'ssh_known_hosts')
        self.ssh_known_hosts = attributes[:'ssh_known_hosts']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
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
      placement_validator = EnumAttributeValidator.new('String', ["none", "waf_debug", "null"])
      return false unless placement_validator.valid?(@placement)
      format_version_validator = EnumAttributeValidator.new('Integer', [1, 2])
      return false unless format_version_validator.valid?(@format_version)
      message_type_validator = EnumAttributeValidator.new('String', ["classic", "loggly", "logplex", "blank"])
      return false unless message_type_validator.valid?(@message_type)
      compression_codec_validator = EnumAttributeValidator.new('String', ["zstd", "snappy", "gzip"])
      return false unless compression_codec_validator.valid?(@compression_codec)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] placement Object to be assigned
    def placement=(placement)
      validator = EnumAttributeValidator.new('String', ["none", "waf_debug", "null"])
      unless validator.valid?(placement)
        fail ArgumentError, "invalid value for \"placement\", must be one of #{validator.allowable_values}."
      end
      @placement = placement
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format_version Object to be assigned
    def format_version=(format_version)
      validator = EnumAttributeValidator.new('Integer', [1, 2])
      unless validator.valid?(format_version)
        fail ArgumentError, "invalid value for \"format_version\", must be one of #{validator.allowable_values}."
      end
      @format_version = format_version
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_type Object to be assigned
    def message_type=(message_type)
      validator = EnumAttributeValidator.new('String', ["classic", "loggly", "logplex", "blank"])
      unless validator.valid?(message_type)
        fail ArgumentError, "invalid value for \"message_type\", must be one of #{validator.allowable_values}."
      end
      @message_type = message_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compression_codec Object to be assigned
    def compression_codec=(compression_codec)
      validator = EnumAttributeValidator.new('String', ["zstd", "snappy", "gzip"])
      unless validator.valid?(compression_codec)
        fail ArgumentError, "invalid value for \"compression_codec\", must be one of #{validator.allowable_values}."
      end
      @compression_codec = compression_codec
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          placement == o.placement &&
          format_version == o.format_version &&
          response_condition == o.response_condition &&
          format == o.format &&
          message_type == o.message_type &&
          timestamp_format == o.timestamp_format &&
          period == o.period &&
          gzip_level == o.gzip_level &&
          compression_codec == o.compression_codec &&
          address == o.address &&
          port == o.port &&
          password == o.password &&
          path == o.path &&
          public_key == o.public_key &&
          secret_key == o.secret_key &&
          ssh_known_hosts == o.ssh_known_hosts &&
          user == o.user &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          updated_at == o.updated_at &&
          service_id == o.service_id &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, placement, format_version, response_condition, format, message_type, timestamp_format, period, gzip_level, compression_codec, address, port, password, path, public_key, secret_key, ssh_known_hosts, user, created_at, deleted_at, updated_at, service_id, version].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.fastly_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.fastly_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = Fastly.const_get(type)
        klass.respond_to?(:fastly_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.fastly_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
