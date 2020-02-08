require 'csv'

class MajorArcana
  attr_reader :title, :number, :softDescription, :hardDescription
  def initialize(title, number, softDescription, hardDescription)
      @title = title
      @number = number
      @softDescription = softDescription
      @hardDescription = hardDescription
    end
    def to_s
        "#{title}, #{number} :#{softDescription}, #{hardDescription}.\n"
    end
end

class Deck
def add_to_deck
  cardFile = "./cards.csv"
  arrayOfMajorArcana = []
  cards = CSV.read(cardFile).collect{ |row| MajorArcana.new *row }
  for card in cards
    arrayOfMajorArcana << card
  end
end
def draw(n, deck)
        deck = deck.to_a.shuffle
        for i in ( 1..n )
          print deck[i]
        end
        print "You draw " + i.to_s
      end
end

shuffledDeck = Deck.new.add_to_deck
draw9 = Deck.new.draw(9, shuffledDeck)
