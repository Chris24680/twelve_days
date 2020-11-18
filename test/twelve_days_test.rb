gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require_relative '../lib/twelve_days'

class VerseNumberFake
  def initialize(number)
    @number = number
  end

  def verse
    "Test verse #{@number}"
  end
end

class VerseFactoryFake
  def self.for(number)
    VerseNumberFake.new(number)
  end
end

class CountdownSongTest < Minitest::Test
  def test_song
    expected =
      "Test verse 96\n" +
      "Test verse 97\n" +
      "Test verse 98\n" +
      "Test verse 99"
    assert_equal(expected, CountdownSong.new(verse_factory: VerseFactoryFake, max: 99, min: 96).song)
  end

  def test_verses
    expected =
      "Test verse 96\n" +
      "Test verse 97"
    assert_equal(expected, CountdownSong.new(verse_factory: VerseFactoryFake, max: 99, min: 96).verses(96, 97))
  end

  def test_verse
    expected = "Test verse 97"
    assert_equal(expected, CountdownSong.new(verse_factory: VerseFactoryFake, max: 99, min: 96).verse(97))
  end
end