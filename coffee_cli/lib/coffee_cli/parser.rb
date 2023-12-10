# frozen_string_literal: true

module CoffeeCli
  class Parser
    def self.parse(options)
      parsed_options = {}

      options_parser = OptionParser.new do |parser|
        parser.on('--name=NAME', 'Name of the coffee being analysed') do |name|
          parsed_options[:name] = name
        end

        parser.on('--producer=PRODUCER', 'Name of the coffee producer') do |producer|
          parsed_options[:producer] = producer
        end

        parser.on('--grams=GRAMS', 'Coffee quantity in grams used') do |grams|
          parsed_options[:grams] = grams
        end

        parser.on('--mls=MLS', 'Water quantity in mls used') do |mls|
          parsed_options[:mls] = mls
        end

        parser.on('--method=METHOD', 'Brewing method used') do |brewing_method|
          parsed_options[:method] = brewing_method
        end

        parser.on('--bitterness=BITTERNESS', 'Coffee bitterness') do |bitterness|
          parsed_options[:bitterness] = bitterness
        end

        parser.on('--acidity=ACIDITY', 'Coffee acidity') do |acidity|
          parsed_options[:acidity] = acidity
        end

        parser.on('--sweetness=SWEETNESS', 'Coffee sweetness') do |sweetness|
          parsed_options[:sweetness] = sweetness
        end

        parser.on('--overall=OVERALL', 'Overall coffee grade') do |overall|
          parsed_options[:overall] = overall
        end
      end

      options_parser.parse!(options)

      parsed_options
    end
  end
end
