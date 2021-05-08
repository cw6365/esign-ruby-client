RSpec.describe Esign::Environment do
  context 'default config' do
    it 'should have the default environment' do
      env = Esign::Environment.new('production')
      expect(env.environment_name).to eq('production')
    end
  end

  it 'should return the environment name when interloped' do
    env = Esign::Environment.new('production')
    expect("#{env}").to eq('production')
  end

  context '#environment name' do
    it 'should raise an error if nil is given' do
      expect{Esign::Environment.new(nil)}
      .to raise_exception(UnknownEnvironmentError)
    end

    it 'should raise an UnknownEnvironmentError if name is wrong' do
      expect{Esign::Environment.new('wrong')}
      .to raise_exception(UnknownEnvironmentError)
    end

    it 'should change the environment name to sandbox' do
      env = Esign::Environment.new('sandbox')
      expect("#{env}").to eq('sandbox')
    end
  end

  context '#sub_domain' do
    it 'should return "api" for production' do
      env = Esign::Environment.new('production')
      expect(env.sub_domain).to eq('api')
    end

    it 'should return "sandbox" for sandbox' do
      env = Esign::Environment.new('sandbox')
      expect(env.sub_domain).to eq('sandbox')
    end
  end
end
