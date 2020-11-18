gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/twelve_days'

class TwelveDaysTest < Minitest::Test
  def test_verse_1
    expected =
      "On the first day of Christmas my true love sent to me\n" +
      "A partridge in a pear tree.\n"
    assert_equal expected, TwelveDays.new.verse(1)
  end

  def test_verse_2
    expected =
    "On the second day of Christmas my true love sent to me\n" +
    "Two turtle doves, and\n" +
    "A partridge in a pear tree.\n"
    assert_equal expected, TwelveDays.new.verse(2)
  end

  def test_verse_3
    expected =
    "On the third day of Christmas my true love sent to me\n" +
    "Three french hens\n" +
    "Two turtle doves, and\n" +
    "A partridge in a pear tree.\n"
    assert_equal expected, TwelveDays.new.verse(3)
  end

  def test_a_couple_verses
    expected =
    "On the first day of Christmas my true love sent to me\n" +
    "A partridge in a pear tree.\n" +
    "\n"+
    "On the second day of Christmas my true love sent to me\n" +
    "Two turtle doves, and\n" +
    "A partridge in a pear tree.\n"
    assert_equal expected, TwelveDays.new.verses(1, 2)
  end

  def test_a_few_verses
    expected =
    "On the first day of Christmas my true love sent to me\n" +
    "A partridge in a pear tree.\n" +
    "\n"+
    "On the second day of Christmas my true love sent to me\n" +
    "Two turtle doves, and\n" +
    "A partridge in a pear tree.\n" +
    "\n"+
    "On the third day of Christmas my true love sent to me\n" +
    "Three french hens\n" +
    "Two turtle doves, and\n" +
    "A partridge in a pear tree.\n"

    assert_equal expected, TwelveDays.new.verses(1, 3)
  end

  def test_the_whole_song
    expected = <<~SONG
    On the first day of Christmas my true love sent to me
    A partridge in a pear tree.

    On the second day of Christmas my true love sent to me
    Two turtle doves, and
    A partridge in a pear tree.

    On the third day of Christmas my true love sent to me
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the fourth day of Christmas my true love sent to me
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the fifth day of Christmas my true love sent to me
    Five golden rings
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the sixth day of Christmas my true love sent to me
    Six geese a-laying
    Five golden rings
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the seventh day of Christmas my true love sent to me
    Seven swans a-swimming
    Six geese a-laying
    Five golden rings
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the eighth day of Christmas my true love sent to me
    Eight maids a-milking
    Seven swans a-swimming
    Six geese a-laying
    Five golden rings
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the ninth day of Christmas my true love sent to me
    Nine ladies dancing
    Eight maids a-milking
    Seven swans a-swimming
    Six geese a-laying
    Five golden rings
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the tenth day of Christmas my true love sent to me
    Ten lords a-leaping
    Nine ladies dancing
    Eight maids a-milking
    Seven swans a-swimming
    Six geese a-laying
    Five golden rings
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the eleventh day of Christmas my true love sent to me
    Eleven pipers piping
    Ten lords a-leaping
    Nine ladies dancing
    Eight maids a-milking
    Seven swans a-swimming
    Six geese a-laying
    Five golden rings
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.

    On the twelvth day of Christmas my true love sent to me
    Twelve drummers drumming
    Eleven pipers piping
    Ten lords a-leaping
    Nine ladies dancing
    Eight maids a-milking
    Seven swans a-swimming
    Six geese a-laying
    Five golden rings
    Four calling birds
    Three french hens
    Two turtle doves, and
    A partridge in a pear tree.
    SONG
    assert_equal expected, TwelveDays.new.song
  end
end
