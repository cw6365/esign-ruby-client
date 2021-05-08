require 'yaml'

module Esign
	class Config
		attr_accessor :defaults, :api_key, :client_id, :client_secret, 
									:redirect_uri, :access_token, :env
		attr_reader :base_uri

		def initialize(options={}, env=Esign::Environment)
			@defaults           = load_yaml("#{Esign.root}/config.yml")
			@api_key            = options[:api_key]
      @env                = env.new(options[:environment] || 'production')
      @client_id          = options[:client_id]
      @client_secret      = options[:client_secret]
      @redirect_uri       = options[:redirect_uri]
      @access_token       = options[:access_token]
		end

		def get_uri
			"#{base_uri}"
		end

		def base_uri
			@base_url ||= URI("https://#{env.sub_domain}.#{defaults[:host]}/#{defaults[:version]}")
		end

		private

		def load_yaml(file)
			YAML.load_file(file).transform_keys(&:to_sym)
		end
	end
end