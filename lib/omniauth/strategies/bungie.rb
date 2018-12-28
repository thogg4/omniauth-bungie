require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bungie < OmniAuth::Strategies::OAuth2

      option :name, 'bungie'
      option :client_options, {
        site: 'https://bungie.net/',
        authorize_url: 'https://www.bungie.net/en/oauth/authorize',
        token_url: 'https://www.bungie.net/platform/app/oauth/token'
      }

      def authorize_params
        super
      end

      def request_phase
        super
      end

      def callback_phase
        super
      end

      info do
        {
          id: membership_id
        }
      end

      def membership_id
        access_token.params['membership_id']
      end
    end
  end
end
