# weather_api
A study in SOLID design and external API querying [Powered by Dark Sky](https://darksky.net/poweredby/).

# Set Up
You need to register for an API key [here](https://darksky.net/devs/docs).

Once you do, add a file called `application.rb` in the project's root directory and add this line:
```
# ./application.rb
DARKSKY_API_KEY = '<YOUR DARK SKY API KEY HERE>'.freeze
```
Download the dependencies:
```
bundle
```
Run the specs:
```
rspec
```
# Usage
```
new_york = DarkSky.new('40.7128', '74.0059')
new_york.forecast
#=> <HTTParty::Response>
```
