#!/usr/bin/ruby
#GIT Todo Lar completed the following:
# LM created repo "whether" [origin git@github.com:laralynmowers/whether.git]
# LM checked code into repo & created (very basic) README
# LM created feature branch "lar_feature"
# LM revised code:
# Couldn't find gem "optparse" and am guessing that was a typo (found geocode parsing gem "OptionParser")?
# Think going with "google-weather" gem (works with "httparty") will be better than "forecast_io"

gem 'google-weather' #stupid simple fetching of the weather using google's api
gem 'httparty' #Makes http fun! Also, makes consuming restful web services dead easy.
gem 'OptionParser' #A flexible command line option parser.

require 'google_weather'
require 'httparty'
#require 'OptionParser'
require 'pp'


#GIT Todo:
#merge changes

#TODO
#--Parse Arguments --loc
#Make a google api call
##https://maps.googleapis.com/maps/api/geocode/json?address=New%20Jersey&key=AIzaSyC0Tdh35uP7SF-9mu4D4ohr6NtNVnK3PfU
## Use the location results under "geometrey"
## paste lat and long from api call
#pass lat and long into forecast
#parse the forecast results
#decision matrix !!
#clean up code (functionalize)

google = "AIzaSyC0Tdh35uP7SF-9mu4D4ohr6NtNVnK3PfU" #GOOGLE API

#OptionParser.new do |opts|
#  opts.banner = "Usage: lalaweather [options]"

 # opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
  #  options[:verbose] = v
  #end

  #opts.on("-l", "--location LOCATION", "Set LOCATION") do |loc|
   # options[:location] = loc
  #end
#end.parse!

#options[:lala] = ["foo","bar"]

#if options.zipcode

#end

#puts "#{options[:location]}"


weather = GoogleWeather.new(46544)

forecast = weather.forecast_conditions[0]
puts forecast.day_of_week, forecast.low, forecast.high, forecast.condition

puts pp weather.forecast_information
puts pp weather.current_conditions
puts pp weather.forecast_conditions

puts "#{weather}"


