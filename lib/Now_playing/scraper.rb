require 'Nokogiri'
require 'open-uri'
require 'pry'


class Scraper

def self.get_page
	html = Nokogiri::HTML(open("http://www.fandango.com/moviesintheaters"))
	binding.pry
end

end