require_relative 'spec/spec_helper'

class Card

  attr_reader :suit, :rank
  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

  def face?
    %w(J Q K).include?(rank)
  end

  def ace?
    %w(A).include?(rank)
  end
end
