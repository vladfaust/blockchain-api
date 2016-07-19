require 'httparty'

module Blockchain::API
  module V2
    class Client
      include HTTParty
      base_uri 'https://api.blockchain.info/v2'

      def initialize(options = {})
        @options = options

        %i(xpub key).each do |key|
          raise ArgumentError.new("No :#{ key } given!") unless @options[key]
        end
      end

      def receive(query = {})
        query.merge!(@options)
        raise ArgumentError.new(":callback is mandatory!") unless query[:callback]
        raise ArgumentError.new(":index and :gap are mutually exclusive (remove one of them)!") if query[:index] && query[:gap]

        self.class.get('/receive', query: query).parsed_response
      end

      def checkgap(query = {})
        query.merge!(@options)
        self.class.get('/receive/checkgap', query: query).parsed_response
      end

      alias_method :check_gap, :checkgap

      # Returns an explicit Integer, just for convenience
      #
      def checkgap!(query = {})
        checkgap(query)['gap']
      end

      alias_method :check_gap!, :checkgap!
      alias_method :gap, :checkgap!
    end
  end
end
