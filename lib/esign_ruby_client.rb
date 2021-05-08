# frozen_string_literal: true
require 'pry'

require 'esign_ruby_client/version'
require 'esign_ruby_client/client'
require 'esign_ruby_client/config/environment'
require 'esign_ruby_client/api_client/api_client'
require 'esign_ruby_client/config/config'
require 'esign_ruby_client/errors/unknown_environment_error'

module Esign
  class << self
  	def root
  		File.expand_path '../..', __FILE__
  	end
  	
    def configure(options = {})
      Esign::Client.configure(options)
    end
  end
end
