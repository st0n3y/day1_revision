require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/camelcase.rb'

class TestCamelcase < MiniTest::Test

  def setup()
    @camelcase = Camelcase.new( 'code clan' )
  end

  def test_camelize_words()
    result = @camelcase.camelize_words()
    assert_equal('CodeClan', result )
  end

end