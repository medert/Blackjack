require 'spec_helper'

RSpec.describe Game do
  describe ".new" do
    game = Game.new
    it "creates player hand" do
      expect(game.player_bust).to eq(false)
    end
  end
# binding.pry
  describe "#determine_winner" do
    game = Game.new
    it "deals an additional card to player" do
      expect(game.determine_winner(20, 19)).to eq("Winner is player!")
    end
  end
end
