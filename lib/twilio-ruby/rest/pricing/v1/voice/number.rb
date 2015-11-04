##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class NumberList < ListResource
      ##
      # Initialize the NumberList
      def initialize(version)
        super
        
        # Path Solution
        @solution = {}
      end
      
      ##
      # Constructs a NumberContext
      def get(number)
        NumberContext.new(@version, number, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Pricing.V1.NumberList>'
      end
    end
  end
end