require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  url = "http://www.930.com/concerts/"
  data = Nokogiri::HTML(open(url))
  @concerts = data.css('.tfly-org-id-4')

  erb :shows
end

# url = "http://www.930.com/concerts/"
# data = Nokogiri::HTML(open(url))
# concerts = data.css('.tfly-org-id-4')

# concerts.each do |concert|
#   puts concert.at_css('.headliners.summary').text.strip

#   if !concert.at_css('.doors').nil?
#     puts concert.at_css('.doors').text.strip
#   else
#     puts "No Data"
#   end

#   puts concert.at_css('.dates').text.strip

#   if !concert.at_css('.custom').nil?
#     puts "SOLD OUT!"
#   else
#     puts concert.at_css('.price-range').text.strip
#   end

#   puts ""
# end

# <%= concert.at_css('.tfly-org-id-4 a')[:href] %>
