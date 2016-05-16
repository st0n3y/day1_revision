require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require 'json'
require_relative './models/word_formatter.rb'
require_relative './models/camelcase.rb'

get '/' do
  erb(:name_and_bio)
end

get '/address' do
  content_type(:json)

  results = {
    address: '3 ARGYLE HOUSE', 
    building: 'CODEBASE', 
    postcode: 'eh13 zqf',
    phone: '0131558030'
  }
  
  wordformatter = WordFormatter.new(results)
  @result = wordformatter.upcase
  return erb(:address).to_json
end