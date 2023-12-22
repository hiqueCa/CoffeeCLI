# frozen_string_literal: true

require 'mongo'

module CoffeeCli
  module Database
    class MongoClient
      PORT = ['127.0.0.1:27017'].freeze
      DATABASE_NAME = 'coffee_cli'

      attr_reader :connection

      def self.connect
        Mongo::Client.new(
          PORT,
          database: DATABASE_NAME
        )
      end
    end
  end
end
