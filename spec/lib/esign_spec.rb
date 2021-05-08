# frozen_string_literal: true

RSpec.describe Esign do
  describe '.configure' do
    it 'delegates .configure to Esign::Client.configure' do
      options = { api_key: 'demo' }
      allow(Esign::Client).to receive(:configure).with(options)

      described_class.configure(options)

      expect(Esign::Client).to have_received(:configure).with(options)
    end
  end
end
