require 'httparty'
require_relative '../application.rb'

# Wrapper for Dark Sky's Forecast API
class DarkSky
	attr_accessor :latitude, :longitude

  include HTTParty
  base_uri 'https://api.darksky.net/forecast'

  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  def forecast
    self.class.get(build_path)
  end

  private

  def build_path
  	"/#{DARKSKY_API_KEY}/#{latitude},#{longitude}"
  end
end
