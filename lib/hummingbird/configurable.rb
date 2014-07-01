module Hummingbird
  module Configurable
    attr_write :scheme, :host, :port
    
    class << self
      def keys
        @keys ||= [:scheme, :host, :port]
      end
    end
    
    # Allow block configuration
    def configure
      yield self
      self
    end
    
    
    private
    
    # @return [Hash]
    def configuration
      {
        scheme: @scheme,
        host:   @host,
        port:   @port 
      }
    end
    
  end
end