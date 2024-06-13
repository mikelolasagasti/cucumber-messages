# frozen_string_literal: true

# The code was auto-generated by {this script}[https://github.com/cucumber/messages/blob/main/jsonschema/scripts/codegen.rb]
module Cucumber
  module Messages
    ##
    # Represents the DocString message in Cucumber's {message protocol}[https://github.com/cucumber/messages].
    ##
    ##
    class DocString < Message
      attr_reader :location

      attr_reader :media_type

      attr_reader :content

      attr_reader :delimiter

      def initialize(
        location: Location.new,
        media_type: nil,
        content: '',
        delimiter: ''
      )
        @location = location
        @media_type = media_type
        @content = content
        @delimiter = delimiter
        super()
      end

      ##
      # Returns a new DocString from the given hash.
      # If the hash keys are camelCased, they are properly assigned to the
      # corresponding snake_cased attributes.
      #
      #   Cucumber::Messages::DocString.from_h(some_hash) # => #<Cucumber::Messages::DocString:0x... ...>
      ##
      def self.from_h(hash)
        return nil if hash.nil?

        new(
          location: Location.from_h(hash[:location]),
          media_type: hash[:mediaType],
          content: hash[:content],
          delimiter: hash[:delimiter]
        )
      end
    end
  end
end