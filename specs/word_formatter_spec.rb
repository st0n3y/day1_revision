require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/word_formatter.rb'

class TestWordFormatter < MiniTest::Test

  def setup()
    @wordformatter = WordFormatter.new()
  end

  def test_upcase('eh13 zqf')
    assert_equal('EH13 ZQF', @word_formatter.upcase)
  end

end