# frozen_string_literal: true

module Esign
  class Environment
    ALLOWED_ENVIRONMENTS = [
      { name: 'production', subdomain: 'api' },
      { name: 'sandbox',    subdomain: 'sandbox' }
    ]

    attr_reader :environment_name

    def initialize(name)
      self.environment_name = name
    end

    def to_s
      environment_name
    end

    def sub_domain
      find_environment_by(environment_name)[:subdomain]
    end


    private

    def environment_name=(name)
      raise UnknownEnvironmentError unless find_environment_by(name)
      @environment_name = name
    end

    def find_environment_by(name)
      allowed_environments.find { |env| env[:name] == name }
    end

    def allowed_environments
      ALLOWED_ENVIRONMENTS
    end
  end
end
