require 'spec_helper'

RSpec.describe Deck do
  describe ".new" do
    deck = Deck.new
    it "creates a new deck" do
      expect(deck.build_deck.length).to eq(52)
    end

    it "should have 52 cards when new deck " do
      expect(deck.cards.length).to eq(52)
    end
  end

  describe "#deal" do
    deck = Deck.new()
    it "deals cards" do
      expect(deck.deal(1).length).to eq(1) 
    end
  end
end
