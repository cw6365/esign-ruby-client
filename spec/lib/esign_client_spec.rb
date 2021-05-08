# frozen_string_literal: true

RSpec.describe Esign::Client do
  it 'has a version number' do
    expect(Esign::Client::VERSION).not_to be nil
  end

  context 'configuring client' do
    it 'creates a new client' do
      expect(described_class.configure()).to be_a(described_class)
    end
  end

  context 'oauth' do
    describe '#get_authorization_page' do
      xit 'should return an error if no oauth credentials' do
        esign_client = described_class.configure
        expect { esign_client.get_authorization_page }.to raise
      end
    end
  end
end
