# frozen_string_literal: true

# The code was auto-generated by {this script}[https://github.com/cucumber/messages/blob/main/jsonschema/scripts/codegen.rb]
module Cucumber
  module Messages
    ##
    # Represents the DataTable message in Cucumber's {message protocol}[https://github.com/cucumber/messages].
    ##
    ##
    class DataTable < Message
      attr_reader :location

      attr_reader :rows

      def initialize(
        location: Location.new,
        rows: []
      )
        @location = location
        @rows = rows
        super()
      end

      ##
      # Returns a new DataTable from the given hash.
      # If the hash keys are camelCased, they are properly assigned to the
      # corresponding snake_cased attributes.
      #
      #   Cucumber::Messages::DataTable.from_h(some_hash) # => #<Cucumber::Messages::DataTable:0x... ...>
      ##
      def self.from_h(hash)
        return nil if hash.nil?

        new(
          location: Location.from_h(hash[:location]),
          rows: hash[:rows]&.map { |item| TableRow.from_h(item) }
        )
      end
    end
  end
end