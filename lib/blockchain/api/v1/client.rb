require 'httparty'

module Blockchain::API
  module V1
    class Client
      include HTTParty
      base_uri 'https://blockchain.info'

      def ticker
        self.class.get('/ticker').parsed_response
      end
    end
  end
end
