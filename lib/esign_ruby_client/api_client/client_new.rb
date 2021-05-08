# frozen_string_literal: true

require 'uri'

module Esign
  class Client
    BASE_URL    = 'e-sign.co.uk'
    VERSION     = 'v3'

    attr_reader :base_url,
                def self.configure(options = {})
                  new(options)
                end

    def initialize(options = {}, env = Esign::Environment.new)
 
      # setup a rest client
    end

    # add access token

    def get
      'this is some text'
    end

    def post(params); end

    def put(params); end

    def delete; end

    private

    def base_url=(env)
      @base_url ||= URI("https://#{env}.#{BASE_URL}/#{VERSION}")
    end
  end
end
