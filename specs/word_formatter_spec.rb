require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/word_formatter.rb'

class TestWordFormatter < MiniTest::Test

  def setup()
    @wordformatter = WordFormatter.new()
  end

  def test_upcase()
    result = @wordformatter.upcase('eh13 zqf')
    assert_equal('EH13 ZQF', result)
  end

  def test_camelise()
    result = @wordformatter.camelise( 'code clan')
    assert_equal('CodeClan', result)
  end

end