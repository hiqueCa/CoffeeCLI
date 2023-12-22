# frozen_string_literal: true

require 'coffee_cli'

RSpec.describe CoffeeCli::Parser do
  let(:coffee_name) { 'Test Coffee' }
  let(:producer_name) { 'Test Producer Name' }
  let(:coffee_grams) { '12' }
  let(:mililiters_of_water) { '200' }
  let(:brewing_method) { 'V60' }
  let(:bitterness) { '5' }
  let(:acidity) { '5' }
  let(:sweetness) { '5' }
  let(:overall) { '5' }


  describe '.parse' do
    it 'accepts a --name flag which parses the coffee name as an option' do
      options = ["--name=#{coffee_name}"]

      expect(described_class.parse(options)).to eq({ name: coffee_name })
    end

    it 'accepts a --name flag which parses the coffee name as an option' do
      options = ["--producer=#{producer_name}"]

      expect(described_class.parse(options)).to eq({ producer: producer_name })
    end

    it 'accepts a --grams flag which parses the amount of coffee used as an option' do
      options = ["--grams=#{coffee_grams}"]

      expect(described_class.parse(options)).to eq({ grams: coffee_grams })
    end

    it 'accepts a --mls flag which parses the amount of water used as an option' do
      options = ["--mls=#{mililiters_of_water}"]

      expect(described_class.parse(options)).to eq({ mls: mililiters_of_water })
    end

    it 'accepts a --method flag which parses the brewing method used as an option' do
      options = ["--method=#{brewing_method}"]

      expect(described_class.parse(options)).to eq({ method: brewing_method })
    end

    it 'accepts a --bitterness flag which parses the coffee bitterness as an option' do
      options = ["--bitterness=#{bitterness}"]

      expect(described_class.parse(options)).to eq({ bitterness: bitterness })
    end

    it 'accepts a --adicity flag which parses the coffee acidity as an option' do
      options = ["--acidity=#{acidity}"]

      expect(described_class.parse(options)).to eq({ acidity: acidity })
    end

    it 'accepts a --sweetness flag which parses the coffee sweetness as an option' do
      options = ["--sweetness=#{sweetness}"]

      expect(described_class.parse(options)).to eq({ sweetness: sweetness })
    end

    it 'accepts a --overall flag which parses the coffee overall grade as an option' do
      options = ["--overall=#{overall}"]

      expect(described_class.parse(options)).to eq({ overall: overall })
    end
  end
end
