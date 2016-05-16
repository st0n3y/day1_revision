require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/camelcase.rb'

class TestCamelcase < MiniTest::Test

  def setup()
    @camelcase = Camelcase.new()
  end

  def test_camelize_words('code clan')
    result = @camelcase.camelize_words()
    assert_equal('CodeClan', result )
  end

end