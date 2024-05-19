# require 'spec_helper'

describe "An ideal sandwich" do

  Sandwich = Struct.new(:taste, :toppings)
  before { @sandwich = Sandwich.new('delicious', []) }
  it "is delicious" do

    taste = @sandwich.taste

    expect(taste).to eq('delicious')

  end
  it 'let me add toppings' do
    @sandwich.toppings << 'cheese'
    toppings = @sandwich.toppings
    expect(toppings).not_to be_empty
  end
end
