require_relative 'spec/spec_helper'


class Deck
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']

  attr_accessor :cards

  def initialize
    @cards = build_deck
  end

  def build_deck
    deck_of_cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        deck_of_cards << Card.new(rank, suit)
      end
    end
    deck_of_cards.shuffle!
  end

  def deal(num)
    cards.pop(num)
  end
end
