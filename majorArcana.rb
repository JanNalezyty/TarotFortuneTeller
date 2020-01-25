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

majors = Deck.new
arrayOfMajorArcana = Array.new

arrayOfMajorArcana << fool = MajorArcana.new("Fool", "0", "Głupiec", "Element of Air + Ketter to Chokmach")
arrayOfMajorArcana << mage = MajorArcana.new("Mage", "I", "Mag","O")
arrayOfMajorArcana << priestes = MajorArcana.new("Priestes", "II", "Kapłanka","O")
arrayOfMajorArcana << empress = MajorArcana.new("Empress", "III", "Cesarzowa", "O")
arrayOfMajorArcana << emperor = MajorArcana.new("Emperor", "IV", "Cesarz", "O")
arrayOfMajorArcana << hierophant = MajorArcana.new("Hierophant", "V", "Papież", "O")
arrayOfMajorArcana <<  lovers = MajorArcana.new("Lovers", "VI", "Kochankowie", "O")
arrayOfMajorArcana << chariot = MajorArcana.new("Chariot", "VII", "Rydwan", "O")
arrayOfMajorArcana << adjustment = MajorArcana.new("Adjustment", "VIII", "Dopasowanie", "O")
arrayOfMajorArcana << hermit = MajorArcana.new("Hermit", "IX", "Pustelnik", "ooooooooo")
arrayOfMajorArcana << fortune = MajorArcana.new("Fortune", "X", "Koło Fortuny", "000")
arrayOfMajorArcana << lust = MajorArcana.new("Lust", "XI", "Żądza", "000")
arrayOfMajorArcana << hangedMan = MajorArcana.new("HangedMan", "XII", "Wisielec", "ooo")
arrayOfMajorArcana << death = MajorArcana.new("Death", "XIII", "Śmierć", "ooo")
arrayOfMajorArcana << art = MajorArcana.new("Art", "XIV", "Sztuka", "oooo")
arrayOfMajorArcana << devil = MajorArcana.new("Devil", "XV", "Diabeł", "ooo")
arrayOfMajorArcana << tower = MajorArcana.new("Tower", "XVI", "Wieża", "ooo")
arrayOfMajorArcana << star = MajorArcana.new("Star", "XVII", "Gwiazda", "oooo")
arrayOfMajorArcana << moon = MajorArcana.new("Moon", "XVIII", "Księżyc","ooo")
arrayOfMajorArcana << sun = MajorArcana.new("Sun", "XIX", "Słońce", "ooo")
arrayOfMajorArcana << aeon = MajorArcana.new("Aeon", "XX", "Era", "ooo")
arrayOfMajorArcana << universe = MajorArcana.new("Universe", "XXI", "Wszechświat", "ooo")

majors.draw(9, arrayOfMajorArcana)
