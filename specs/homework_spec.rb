require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/wordformatter.rb')
require_relative( '../models/camelcaser.rb')


class TestHomework < MiniTest::Test

  def setup
    hash = {
      address: '3 ARGYLE HOUSE',
      building: 'CODEBASE',
      postcode: 'e13 zqf',
      phone: '0131558030'
    }
    @data = WordFormatter.new(hash)

    string = "test camel case"
    @edit = Camelcaser.new(string)
  end

  def test_upcase_postcode
    assert_equal("address: 3 ARGYLE HOUSE, building: CODEBASE, postcode: E13 ZQF, phone: 0131558030", @data.upcase_postcode)
  end

  def test_camelcase
    assert_equal("TestCamelCase", @edit.camelcase)
  end

  def test_class_method
    result = WordFormatter.camel_case( "test camel case" )
    assert_equal("TestCamelCase", result)
    ###### This is a class method - could of used this instead of using a seperate class called camelcaser. 
  end


end 




