require_relative 'spec_helper'

RSpec.describe Hand do

  deck = Deck.new()
  hand = Hand.new(deck.deal(2))
  describe ".new" do
    it "creates a hand of cards" do
    expect(hand.arr_cards.length).to eq(2)
    end
  end

end
