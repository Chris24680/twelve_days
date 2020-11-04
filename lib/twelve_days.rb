class TwelveDays
  def line(day)
    case day
    when 1
      "A partridge in a pear tree"
    when 2
      "Two turtle doves"
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

  def verse(day)
    case day
    when 1
      "On the first day of Christmas my true love sent to me\n"+
      "A partridge in a pear tree.\n"
    when 2
      "On the second day of Christmas my true love sent to me\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 3
      "On the third day of Christmas my true love sent to me\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 4
      "On the fourth day of Christmas my true love sent to me\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 5
      "On the fifth day of Christmas my true love sent to me\n"+
      "Five golden rings\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 6
      "On the sixth day of Christmas my true love sent to me\n"+
      "Six geese a-laying\n"+
      "Five golden rings\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 7
      "On the seventh day of Christmas my true love sent to me\n"+
      "Seven swans a-swimming\n"+
      "Six geese a-laying\n"+
      "Five golden rings\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 8
      "On the eighth day of Christmas my true love sent to me\n"+
      "Eight maids a-milking\n"+
      "Seven swans a-swimming\n"+
      "Six geese a-laying\n"+
      "Five golden rings\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 9
      "On the ninth day of Christmas my true love sent to me\n"+
      "Nine ladies dancing\n"+
      "Eight maids a-milking\n"+
      "Seven swans a-swimming\n"+
      "Six geese a-laying\n"+
      "Five golden rings\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 10
      "On the tenth day of Christmas my true love sent to me\n"+
      "Ten lords a-leaping\n"+
      "Nine ladies dancing\n"+
      "Eight maids a-milking\n"+
      "Seven swans a-swimming\n"+
      "Six geese a-laying\n"+
      "Five golden rings\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 11
      "On the eleventh day of Christmas my true love sent to me\n"+
      "Eleven pipers piping\n"+
      "Ten lords a-leaping\n"+
      "Nine ladies dancing\n"+
      "Eight maids a-milking\n"+
      "Seven swans a-swimming\n"+
      "Six geese a-laying\n"+
      "Five golden rings\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    when 12
      "On the twelvth day of Christmas my true love sent to me\n"+
      "Twelve drummers drumming\n"+
      "Eleven pipers piping\n"+
      "Ten lords a-leaping\n"+
      "Nine ladies dancing\n"+
      "Eight maids a-milking\n"+
      "Seven swans a-swimming\n"+
      "Six geese a-laying\n"+
      "Five golden rings\n"+
      "Four calling birds\n"+
      "Three french hens\n"+
      "Two turtle doves, and\n"+
      "A partridge in a pear tree.\n"
    end
  end

  def verses(first, last)
    (first..last).map{ |day| verse(day) }.join("\n")
  end

  def song
    verses(1, 12)
  end
end
