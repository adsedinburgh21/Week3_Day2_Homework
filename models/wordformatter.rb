class WordFormatter

  def initialize (params)
    @address = params[:address]
    @building = params[:building]
    @postcode = params[:postcode]
    @phone = params[:phone]
  end

  def upcase_postcode
    "address: #{@address}, building: #{@building}, postcode: #{@postcode.upcase}, phone: #{@phone}"
  end

  def self.camel_case( string )
    string.split.map(&:capitalize).join
    # puts( 'This is a class method!' )    could have used this instead of creating camelcase class. - although nothing wrong with having camelcase as its own class.
  end

end