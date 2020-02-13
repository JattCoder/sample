#scrapping HTML page sampledoc
require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

p doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")[0].name

#binding.pry
#puts doc.css #pulls out all of the data from HTML page
#puts doc.css(".headline-26OIBN") #pulls out css attributes of heading
#puts doc.css(".headline-26OIBN").text #pulls out heading
#binding.pry