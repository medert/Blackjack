require_relative 'spec_helper'

RSpec.describe Card do
  card = Card.new('A','♣')
  describe ".new" do
    it "creates new card" do
      expect(card.rank).to eq('A')
    end
    it "creates new card" do
      expect(card.suit).to eq('♣')
    end
  end

  describe "#face?" do
    it "checks if the card is a face type" do
      expect(card.face?).to eq(false)
    end
  end

  describe "#ace?" do
    it "checks if the card is an ace type" do
      expect(card.ace?).to eq(true)
    end
  end
end
