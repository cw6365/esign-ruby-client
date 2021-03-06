# frozen_string_literal: true

require_relative 'lib/esign_ruby_client/version'

Gem::Specification.new do |spec|
  spec.name          = 'esign_ruby_client'
  spec.version       = Esign::Client::VERSION
  spec.authors       = ['Wardy']
  spec.email         = ['chris@e-sign.co.uk']

  spec.summary       = 'E-Sign API V3 Ruby Client'
  spec.description   = 'E-Sign Ruby Client. Request an auth token from www.e-sign.co.uk, docs: https://api.e-sign.co.uk/v3/'
  spec.homepage      = 'https://www.e-sign.co.uk'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/E-sign/e-sign-ruby-client'
  spec.metadata['changelog_uri'] = 'https://github.com/E-sign/e-sign-ruby-client/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'guard', '~> 2.16'
  spec.add_development_dependency 'guard-rspec', '>= 4.7.3'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop', '~> 1.13'
  spec.add_development_dependency 'rubocop-rake'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'httparty', '~> 0.13.7'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
