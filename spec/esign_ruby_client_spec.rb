# frozen_string_literal: true

RSpec.describe Esign::Client do
  it "has a version number" do
    expect(Esign::Client::VERSION).not_to be nil
  end

  it "creates a new instance of Esign::Client" do
    expect(Esign::Client.new).to be_a(Esign::Client)
  end
end
