#!/usr/bin/ruby
#ea980cd3868124c91041aa74b38bcf16  FORCAST API

#AIzaSyC0Tdh35uP7SF-9mu4D4ohr6NtNVnK3PfU  GOOGLE API

#GIT Todo Homework
#check in code
#create feature branch
#merge changes

#TODO
#--Parse Arguments --loc
#research ruby gem for http api calls
#Make a google api call
##https://maps.googleapis.com/maps/api/geocode/json?address=New%20Jersey&key=AIzaSyC0Tdh35uP7SF-9mu4D4ohr6NtNVnK3PfU
## Use the location results under "geometrey"
## paste lat and long from api call
#pass lat and long into forecast
#parse the forecast results
#decision matrix !!
#clean up code (functionalize)

require 'forecast_io'
require 'optparse'

options = {}

OptionParser.new do |opts|
  opts.banner = "Usage: lalaweather [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end

  opts.on("-l", "--location LOCATION", "Set LOCATION") do |loc|
    options[:location] = loc
  end
end.parse!

options[:lala] = ["foo","bar"]

#if options.zipcode

#end

APIKEY = "ea980cd3868124c91041aa74b38bcf16"

ForecastIO.configure do |configuration|
  configuration.api_key = APIKEY
end

forecast = ForecastIO.forecast(37.8267, -122.423)

puts "#{options[:location]}"

