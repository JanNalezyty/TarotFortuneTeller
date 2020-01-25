class MajorArcana
  attr_reader :title, :number, :softDescription, :hardDescription
  def initialize(title, number, softDescription, hardDescription)
      @title = title
      @number = number
      @softDescription = softDescription
      @hardDescription = hardDescription
    end
#to_s tutaj overajduje rubiowe to_s, które printuje tylko klasę jako obiekt w pamięci
    def to_s
        "#{title}, #{number} his atributes are: #{softDescription}, #{hardDescription}.\n"
    end
end

class Deck
    def draw(n, arrayOfMajorArcana)
        arrayOfMajorArcana = arrayOfMajorArcana.to_a.shuffle
        for i in ( 1..n )
          print arrayOfMajorArcana[i]
        end
        print "You draw " + i.to_s
      end
end

require 'csv'
path = 'C:\Users\User\Desktop\MyStuff\RUBY\tarot\cards.csv'

arrayOfMajorArcana = Array.new
cards = CSV.read(path).collect{ |row| MajorArcana.new *row }

for card in cards
  arrayOfMajorArcana << card
end

majors = Deck.new.draw(9, arrayOfMajorArcana)
