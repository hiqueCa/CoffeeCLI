# frozen_string_literal: true

require 'thor'
require_relative 'services/create_brew'

module CoffeeCli
  class CLI < Thor
    desc "describe_brew", "describe your latest coffee brewing experience"

    option :coffee_name, required: true
    option :coffee_grams, required: true
    option :water_mls, required: true

    def describe_brew
      brew_info = {
        name: options[:coffee_name],
        grams: options[:coffee_grams],
        mililiters: options[:water_mls]
      }

      CoffeeCli::Services::CreateBrew.call(brew_info)
    end
  end
end
