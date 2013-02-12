require 'spec_helper'
require 'omniauth-37signals'

describe OmniAuth::Strategies::ThirtySevenSignals do
  subject do
    strategy = OmniAuth::Strategies::ThirtySevenSignals.new(nil, @options || {})
    strategy.stub(:session) { {} }
    strategy
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct 37signals site' do
      subject.client.site.should eq("https://launchpad.37signals.com")
    end

    it 'should have the correct authorization url' do
      subject.client.options[:authorize_url].should eq("/authorization/new")
    end

    it 'should have the correct token url' do
      subject.client.options[:token_url].should eq('/authorization/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/37signals/callback')
    end
  end
end
