require 'httparty'
require './application.rb'
longitude = '40.7128'
latitude = '74.0059'
forecast = HTTParty.get("https://api.darksky.net/forecast/#{API_KEY}/#{latitude},#{longitude}")
puts forecast
