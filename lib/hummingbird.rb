require 'rest_client'
require 'multi_json'

require_relative 'hummingbird/configurable'
require_relative 'hummingbird/client'

module Hummingbird
  class << self
    include Hummingbird::Configurable
    
    # Delegate to a Hummingbird::Client
    #
    # @return [Hummingbird::Client]
    def client
      @client = Hummingbird::Client.new(configuration) unless defined?(@client)
      @client
    end
    
    # Has a client been initialized on the Hummingbird module?
    #
    # @return [Boolean]
    def client?
      !!@client
    end


    def respond_to?(method_name, include_private=false)
      client.respond_to?(method_name, include_private) || super
    end


    private

    def method_missing(method_name, *args, &block)
      return super unless client.respond_to?(method_name)
      client.send(method_name, *args, &block)
    end
    
  end
end