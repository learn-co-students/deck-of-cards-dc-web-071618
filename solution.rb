class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    suit_arr = ["Hearts", "Clubs", "Diamonds", "Spades"]
    rank_arr = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    suit_arr.each do |suit|
      rank_arr.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    var = @cards.sample
    @cards.delete(var)
  end
end

class Card
  attr_accessor :rank, :suit

  def initialize (suit, rank)
    @suit = suit
    @rank = rank
  end
end
