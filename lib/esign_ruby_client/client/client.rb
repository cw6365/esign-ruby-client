# frozen_string_literal: true

module Esign
  class Client
  	DEFAULT_BASE_URL = 'https://api.e-sign.co.uk/v3'

  	attr_reader :base_url

  	def self.configure(options={})
  	  new(options)
  	end 

    def initialize(options={})
      @api_key       = options[:api_key]
      @base_url      = options[:base_url] || DEFAULT_BASE_URL
      @client_id     = options[:client_id]
      @client_secret = options[:client_secret]
      @redirect_uri  = options[:redirect_uri]

      # setup a rest client
    end

    # add access token

    def get

    end

    def post(params)

    end

    def put(params)

    end

    def delete

    end
  end
end