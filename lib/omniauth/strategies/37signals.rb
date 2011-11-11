require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class ThirtySevenSignals < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://launchpad.37signals.com',
        :authorize_url => '/authorization/new',
        :token_url => '/authorization/token'
      }

      option :authorize_params, {
        :type => 'web_server',
        :response_type => 'web_server'
      }

      option :name, '37signals'

      def request_phase
        super
      end

      def build_access_token
        token_params = {
          :code => request.params['code'],
          :redirect_uri => callback_url,
          :client_id => client.id,
          :client_secret => client.secret,
          :type => 'web_server'
        }
        client.get_token(token_params)
      end
      
      uid { raw_info.parsed['identity']['id'] }

      info do
        {
          'email' => raw_info.parsed['identity']['email_address'],
          'first_name' => raw_info.parsed['identity']['first_name'],
          'last_name' => raw_info.parsed['identity']['last_name'],
          'name' => [raw_info.parsed['identity']['first_name'], raw_info.parsed['identity']['last_name']].join(' ').strip
        }
      end

      extra do
        {
          'accounts' => raw_info.parsed['accounts'],
          'raw_info' => raw_info.parsed
        }
      end

      def raw_info
        access_token.options[:parse] = :json
        @raw_info ||= access_token.get('/authorization.json')
      end

    end
  end
end

OmniAuth.config.add_camelization '37signals', 'ThirtySevenSignals'
