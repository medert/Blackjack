require_relative 'spec/spec_helper'


class Hand
  attr_reader :arr_cards

  def initialize(cards)
    @arr_cards = cards
  end

  def add_card(cards)
    @arr_cards << cards
  end

  def calculate_score
    score = 0
    num_aces = 0
    @arr_cards.each do |card|
      if card.rank.to_i != 0
        score += card.rank.to_i
      elsif card.face?
        score += 10
      elsif card.ace?
        num_aces += 1
        if score <= 10 && num_aces == 1
          score += 11
        else
          score += 1
        end
      else
      end
    end
    return score
  end

end
