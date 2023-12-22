# frozen_string_literal: true

require_relative '../database/mongo_client'

module CoffeeCli
  module Services
    class CreateBrew
      def self.call(brew_info)
        brews = CoffeeCli::Database::MongoClient.connect[:brews]

        brews.insert_one(brew_info)
      end
    end
  end
end
