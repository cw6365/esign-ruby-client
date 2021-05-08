# frozen_string_literal: true

RSpec.describe Esign::Config do
	context 'default config' do
		it 'should have defaults' do
			config = Esign::Config.new
			expect(config.api_key).to be_nil
			expect(config.client_secret).to be_nil
			expect(config.client_id).to be_nil
			expect(config.redirect_uri).to be_nil
			expect(config.access_token).to be_nil
			expect(config.env).to be_a(Esign::Environment)
		end
	end

	context '#get_uri' do
		it 'should include return a URI' do
		  expect(described_class.new.base_uri).to be_a(URI::HTTPS)	
		end

		it 'should include https' do
			expect(described_class.new.get_uri).to include('https')	
		end

		it 'should include api for production' do
			expect(described_class.new.get_uri).to include('api')
		end

		it 'should include sandbox for staging' do
		  expect(described_class.new(environment: 'sandbox').get_uri)
		  .to include('sandbox')	
		end

		it 'should include the version' do
			expect(described_class.new.get_uri).to include('v3')
		end
	end
end