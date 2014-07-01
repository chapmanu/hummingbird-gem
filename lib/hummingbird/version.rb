module Hummingbird
  class Version
    MAJOR = 0 unless defined? Hummingbird::Version::MAJOR
    MINOR = 0 unless defined? Hummingbird::Version::MINOR
    PATCH = 1 unless defined? Hummingbird::Version::PATCH
    PRE = nil unless defined? Hummingbird::Version::PRE

    class << self

      # @return [String]
      def to_s
        [MAJOR, MINOR, PATCH, PRE].compact.join('.')
      end

    end
    
  end
end
  