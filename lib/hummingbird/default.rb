module Hummingbird
  module Default
    
      HTTP_MODE = 'https' unless defined? Hummingbird::Default::HTTP_mode
    
      class << self
      
        def http_mode
          HTTP_MODE
        end
      
      end
    
    end
end