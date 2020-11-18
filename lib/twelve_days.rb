class TwelveDays
  def song
    verses(1, 12)
  end

  def verses(first, last)
    (first..last).map{ |day| verse(day) }.join("\n")
  end

  def verse(day)
    "On the #{ordiante(day)} day of Christmas my true love sent to me\n#{lines(day)}\n" 
  end

  def lines(day)
    day.downto(1).map{ |day| line(day) }.join("\n")
  end

  def ordiante(day)
    case day
    when 1
      "first"
    when 2
      "second"
    when 3
      "third"
    when 4 
      "fourth"
    when 5 
      "fifth"
    when 6
      "sixth"
    when 7 
      "seventh"
    when 8
      "eighth"
    when 9
      "ninth"
    when 10
      "tenth"
    when 11
      "eleventh"
    when 12
      "twelvth"
    end
  end

  def line(day)
    case day
    when 1
      "A partridge in a pear tree."
    when 2
      "Two turtle doves, and"
    when 3
      "Three french hens"
    when 4 
      "Four calling birds"
    when 5 
      "Five golden rings"
    when 6
      "Six geese a-laying"
    when 7 
      "Seven swans a-swimming"
    when 8
      "Eight maids a-milking"
    when 9
      "Nine ladies dancing"
    when 10
      "Ten lords a-leaping"
    when 11
      "Eleven pipers piping"
    when 12
      "Twelve drummers drumming"
    end
  end
end
