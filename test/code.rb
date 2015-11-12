require "rspec"

class Card
  def initialize
    @card = Deck.new
  end

end



RSpec.describe Card do
  describe ".new" do
    it 'creates new card' do
      card = Card.new
      expect(card).to eq()
    end
  end
  it "
  end
end
