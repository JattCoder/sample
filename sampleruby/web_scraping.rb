#scrapping HTML page sampledoc
require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("http://www.rllipton.com/product.php")

doc = Nokogiri::HTML(html)

names =  doc.css("ul").text
puts names
#binding.pry
#puts doc.css #pulls out all of the data from HTML page
#puts doc.css(".headline-26OIBN") #pulls out css attributes of heading
#puts doc.css(".headline-26OIBN").text #pulls out heading
#binding.pry