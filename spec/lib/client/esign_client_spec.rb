# frozen_string_literal: true

RSpec.describe Esign::Client do
  it "has a version number" do
    expect(Esign::Client::VERSION).not_to be nil
  end

  context 'configuring client' do
    it "creates a new client" do
  	  expect(Esign::Client.configure(api_key: "demo")).to be_a(Esign::Client)
    end

    it "changes the base_url" do
      sandbox_base_url = "https://sandbox.e-sign.co.uk"
      esign_client = Esign::Client.configure(base_url: sandbox_base_url)
	  expect(esign_client.base_url).to eq(sandbox_base_url)
    end

    it "should return the default base_url" do
      esign_client = Esign::Client.configure()
	  expect(esign_client.base_url).to eq(Esign::Client::DEFAULT_BASE_URL)
    end
  end

  context 'oauth' do
  	describe '#get_authorization_page' do
  	  xit 'should return an error if no oauth credentials' do
		esign_client = Esign::Client.configure()
		expect { esign_client.get_authorization_page }.to raise
  	  end 
  	end
  end

  context 'send envelope' do
    it 'should call request with the correct URI'

    it 'should call request with the correct data'

    it 'should can request with the correct method'
  end
end


