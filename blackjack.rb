require_relative 'spec/spec_helper'

class Game
  attr_reader :player, :dealer, :player_bust

  def initialize()
    @deck = Deck.new
    @player = Hand.new(@deck.deal(2))
    @dealer = Hand.new(@deck.deal(2))
    @player_bust = false
    @dealer_bust = false
  end

  def play
    puts ''
    puts "Welcome to the Blackjack!"
    puts ""

    @player.arr_cards.each {|card| puts "Player was dealt #{card.rank}#{card.suit}"}
    puts "Player score #{@player.calculate_score}"

    puts ''
    puts "Hit/stand"
    player_hit = gets.chomp.downcase
    puts ''

    while player_hit == 'hit' || player_hit == 'h'
      new_card = hit!(@player)
      puts "Player was dealt #{new_card.rank}#{new_card.suit}"
      puts "Player score #{@player.calculate_score}"
      puts ''
      if @player.calculate_score > 21
        @player_bust = true
        puts 'Bust, you loose!'
        break
      end
      puts ""
      puts "Hit or Stand"
      player_hit = gets.chomp.downcase
    end

    unless @player_bust == true && (player_hit != "hit" || player_hit != "h")

      @dealer.arr_cards.each {|card| puts "Dealer was dealt #{card.rank}#{card.suit}"}
      puts "Dealer score: #{@dealer.calculate_score}"
      puts ""

      while @dealer.calculate_score < 17
        new_card = hit!(@dealer)
        puts "Dealer was dealt #{new_card.rank}#{new_card.suit}"
        puts "Dealer score #{@dealer.calculate_score}"
        puts ""
        if @dealer.calculate_score >= 17
          break
        end
      end
    end
    #binding.pry
    puts determine_winner(@player.calculate_score, @dealer.calculate_score)
  end

  def hit!(hand)
    new_card = @deck.deal(1)[0]
    hand.add_card(new_card)
    return new_card
  end


  def determine_winner(player_score, dealer_score)
    if player_score <= 21 && dealer_score <= 21
      if player_score > dealer_score
        winner = "player"
      else
        winner = "dealer"
      end
    elsif player_score > 21 && dealer_score <= 21
        winner = "dealer"
    elsif player_score <= 21 && dealer_score > 21
        winner = "player"
    else
      winner = "Draw"
    end
    return "Winner is #{winner}!"
    puts "Winner is #{winner}!"
  end
end


game = Game.new
game.play
