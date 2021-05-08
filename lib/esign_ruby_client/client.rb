# frozen_string_literal: true

require 'uri'

module Esign
  class Client
    attr_reader :config

    def self.configure(options = {})
      new(Esign::Config.new(options))
    end

    def initialize(config, api_client = Esign::ApiClient)
      @config     = config
      @api_client = api_client.new(config: config)
    end

    # add access token

    def get
      'this is some text'
    end

    def post(params); end

    def put(params); end

    def delete; end
  end
end
