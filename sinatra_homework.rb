require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/wordformatter.rb')
require_relative( './models/camelcaser.rb' )
require( 'json' )



get '/' do
  erb(:homepage)
end


get '/address' do
  # content_type( :json )     ## alternative to erb

  result = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  info = WordFormatter.new(result)
  @address = info.upcase_postcode
  # return @address.to_json()    ## alternative to erb  
  erb(:address)
end

get '/camelcase/:word1' do
  # content_type( :json )     ## alternative to erb

  text = params[:word1]
  edit = Camelcaser.new(text)
  @data = edit.camelcase
  # return @data.to_json()     ## alternative to erb
  erb(:camelcase)
end


