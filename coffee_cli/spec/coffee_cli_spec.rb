# frozen_string_literal: true

RSpec.describe CoffeeCli do
  it "has a version number" do
    expect(CoffeeCli::VERSION).not_to be nil
  end
end
