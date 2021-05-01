# frozen_string_literal: true

require "esign_ruby_client/version"
require "esign_ruby_client/client/client"

module Esign
  class << self
    def configure(options={}) 
      Esign::Client.configure(options)
    end
  end
end