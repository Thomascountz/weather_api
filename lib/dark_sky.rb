require 'httparty'
require_relative '../application.rb'

# Wrapper for Dark Sky's Forecast API
class DarkSky
  include HTTParty

  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def forecast
    self.class.get("https://api.darksky.net/forecast/#{DARKSKY_API_KEY}/#{@latitude},#{@longitude}")
  end
end
