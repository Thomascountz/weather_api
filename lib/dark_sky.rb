require 'httparty'
require_relative '../application.rb'

# Wrapper for Dark Sky's Forecast API
class DarkSky
  attr_accessor :location

  include HTTParty
  base_uri 'https://api.darksky.net/forecast'

  def initialize(args = {})
    latitude = args.fetch(:latitude, '40.7128').to_s
    longitude = args.fetch(:longitude, '74.0059').to_s
    @location = Location.new(latitude, longitude)
  end

  def forecast
    self.class.get(build_path)
  end

  Location = Struct.new(:latitude, :longitude)

  private

  def build_path
    "/#{DARKSKY_API_KEY}/#{location.latitude},#{location.longitude}"
  end
end
