require_relative 'configurable'

module Hummingbird
  class Client
    include Hummingbird::Configurable
    
    def initialize(options={})
      Hummingbird::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Hummingbird.instance_variable_get(:"@#{key}"))
      end
    end
    
    # Perform HTTP GET request
    def get(path, params={})
      RestClient.get request_base+path, {params: params}
    end
    
    # Perform HTTP POST request
    def post(path, params={})
      RestClient.post request_base+path, params
    end
    
    # Perform HTTP PUT request
    def put(path, params={})
      RestClient.put request_base+path, params
    end
    
    # Perform HTTP DELETE request
    def delete(path)
      RestClient.delete request_base+path
    end
    
    
    private
    
    def request_base
      "#{@http_mode}://#{@host}:#{@port}"
    end
  end
end