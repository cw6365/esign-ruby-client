# EsignRubyClient

The official E-Sign Ruby Client gem for interacting with V3 of the E-Sign Signatures API.

## Installation

Gemfile:

```ruby
gem 'esign_ruby_client'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install esign_ruby_client

## Usage

Here's how to send an Envelope for signing using the library:

```ruby
require 'esign_ruby_client'

# First, instantiate the E-Sign Client with your API key
esign_client = Esign::Client.new 'your-api-key'

# Define your envelope parameters
env_params =  { 
  envelope: { # Envelope pack meta
    title: 'Contract Signing Pack',
    documents: [{ # individual documents array
      'title': 'Employment Contract',
      'upload_file': { # Uploaded file ID
        'id': 'Ad1cC97Uce0I2jPVEpbHPARvFpxxnA'
      }
    }],
    signers: [{ # Signers Array
      'name': 'Foo Bar',
      'email': 'hello@example.com'
    }]
  }
}

# Send your envelope through the client
esign_client.send_envelope env_params
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/esign_ruby_client.
