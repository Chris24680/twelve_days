class CountdownSong
  def initialize(verse_factory: ChristmasDayFactory, max: 12, min: 1)
    @verse_factory = verse_factory
    @max = max
    @min = min
  end

  def song
    verses(@min, @max)
  end

  def verses(first, last)
    (first..last).map{ |i| verse(i) }.join("\n")
  end

  def verse(day)
    @verse_factory.for(day).verse
  end
end

class ChristmasDayFactory
  def self.for(day_number)
    case day_number
    when 1
      ChristmasDay.new(day_number: 1, gift: "partridge in a pear tree")
    when 2
      ChristmasDayTwo.new(day_number: 2, gift: "turtle doves")
    when 3
      ChristmasDayThree.new(day_number: 3, gift: "french hens")
    when 4 
      ChristmasDayFour.new(day_number: 4, gift: "calling birds")
    when 5 
      ChristmasDayFive.new(day_number: 5, gift: "playstations")
    when 6
      ChristmasDaySix.new(day_number: 6, gift: "geese a-laying")
    when 7 
      ChristmasDaySeven.new(day_number: 7, gift: "swans a-swimming")
    when 8
      ChristmasDayEight.new(day_number: 8, gift: "maids a-milking")
    when 9
      ChristmasDayNine.new(day_number: 9, gift: "ladies dancing")
    when 10
      ChristmasDayTen.new(day_number: 10, gift: "lords a-leaping")
    when 11
      ChristmasDayEleven.new(day_number: 11, gift: "pipers piping")
    else
      ChristmasDayTwelve.new(day_number: 12, gift: "drummers drumming")
    end
  end
end

class ChristmasDay
  attr_reader :day_number
  def initialize(day_number:, gift:)
    @day_number = day_number
    @gift = gift
  end

  def verse
    "On the #{ordinate} day of Christmas my true love sent to me\n#{lines}\n" 
  end

  def lines
    @day_number.downto(1).map{ |day| ChristmasDayFactory.for(day).line }.join("\n")
  end

  def ordinate
    "first"
  end

  def line
    "A #{@gift}."
  end
end

class ChristmasDayTwo < ChristmasDay
  def ordinate
    "second"
  end

  def line
    "Two #{@gift}, and"
  end
end

class ChristmasDayThree < ChristmasDay
  def ordinate
    "third"
  end

  def line
    "Three #{@gift}"
  end
end

class ChristmasDayFour < ChristmasDay
  def ordinate
    "fourth"
  end

  def line
    "Four #{@gift}"
  end
end

class ChristmasDayFive < ChristmasDay
  def ordinate
    "fifth"
  end

  def line
    "Five #{@gift}"
  end
end

class ChristmasDaySix < ChristmasDay
  def ordinate
    "sixth"
  end

  def line
    "Six #{@gift}"
  end
end

class ChristmasDaySeven < ChristmasDay
  def ordinate
    "seventh"
  end

  def line
    "Seven #{@gift}"
  end
end

class ChristmasDayEight < ChristmasDay
  def ordinate
    "eighth"
  end

  def line
    "Eight #{@gift}"
  end
end

class ChristmasDayNine < ChristmasDay
  def ordinate
    "ninth"
  end

  def line
    "Nine #{@gift}"
  end
end

class ChristmasDayTen < ChristmasDay
  def ordinate
    "tenth"
  end

  def line
    "Ten #{@gift}"
  end
end

class ChristmasDayEleven < ChristmasDay
  def ordinate
    "eleventh"
  end

  def line
    "Eleven #{@gift}"
  end
end

class ChristmasDayTwelve < ChristmasDay
  def ordinate
    "twelvth"
  end

  def line
    "Twelve #{@gift}"
  end
end
