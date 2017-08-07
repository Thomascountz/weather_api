# weather_api
A study in SOLID design and external API querying [Powered by Dark Sky](https://darksky.net/poweredby/).

# Set Up
You need to register for an API key [here](https://darksky.net/devs/docs).

Fork the repo and clone a copy 

Once you do, add a file called `application.rb` in the project's root directory, then add this line:
```
# ./application.rb
DARKSKY_API_KEY = '<YOUR DARK SKY API KEY HERE>'.freeze
```
Download the dependencies:
```
$ bundle
```
Run the specs:
```
$ rspec
```
# Usage
```
new_york = DarkSky.new(latitude: '40.7128', longitude: '74.0059')
new_york.forecast
#=> <HTTParty::Response>
```

# Project Details

Read more about the purpose and process behind this project on my blog, [here](https://medium.com/@thomascountz/learning-how-to-read-the-weather-with-sandi-metz-62553be9e82e)!
