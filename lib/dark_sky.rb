require 'httparty'
require_relative '../application.rb'

def forecast
	longitude = '40.7128'
	latitude = '74.0059'
	forecast = HTTParty.get("https://api.darksky.net/forecast/#{DARKSKY_API_KEY}/#{latitude},#{longitude}")
end