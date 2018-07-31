require 'pry'
class Card
  attr_accessor :rank, :suit

  @@all = []

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    @@all << self
  end


  def self.all
    @@all
  end

end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    card = @cards.sample
    @cards.delete(card)
    card
  end
end
