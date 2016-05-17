require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require 'json'
require_relative './models/word_formatter.rb'

get '/' do
  erb(:name_and_bio)
end

get '/address' do
  content_type(:json)

  wordformatter = WordFormatter.new()

  results = {
    address: '3 ARGYLE HOUSE', 
    building: 'CODEBASE', 
    postcode: wordformatter.upcase('eh13 zqf'),
    phone: '0131558030'
  }
  
  return results.to_json
end

get '/camelise/:string' do
  wordformatter = WordFormatter.new()
  return wordformatter.camelise(params[:string])
end