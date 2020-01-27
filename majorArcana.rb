require 'csv'
require_relative = "./cards.csv"

class MajorArcana
  attr_reader :title, :number, :softDescription, :hardDescription
  def initialize(title, number, softDescription, hardDescription)
      @title = title
      @number = number
      @softDescription = softDescription
      @hardDescription = hardDescription
    end
    def to_s
        "#{title}, #{number} his atributes are: #{softDescription}, #{hardDescription}.\n"
    end
end

class Deck
    def draw(n, deck)
        deck = deck.to_a.shuffle
        for i in ( 1..n )
          print deck[i]
        end
        print "You draw " + i.to_s
      end
end


arrayOfMajorArcana = Array.new
cards = CSV.read(require_relative).collect{ |row| MajorArcana.new *row }
for card in cards
  arrayOfMajorArcana << card
end

majors = Deck.new.draw(9, arrayOfMajorArcana)
