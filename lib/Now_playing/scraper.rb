require 'nokogiri'
require 'open-uri'
require 'pry'


class NowPlaying::Scraper

	def initialize 
		@html = Nokogiri::HTML(open("https://www.fandango.com/moviesintheaters"))
	end

	def get_titles 
		items = @html.css("movie-ls-group").css("visual-item")
	


	# 	titles = @html.css(".visual-title").25.times do |title|
	# 		url = title.attributes["href"].value 
	# 		movie_page = Nokogiri::HTML(open(url))
	# 		synopsis_url = movie_page.css("mop_synopsis-link").attributes["href"].value 
	# 		synopsis_page = Nokogiri::HTML(open(synopsis_url))

	# 		title = title.text.strip
	# 		description = synopsis_page.css("description_class_name").text.strip 

	# 		movie = Movie.new(title, description)
	# 		movie.save 
	# 	end
		

	# 	titles[0..24]
	# end 

	


 def get_description
 	movies = html.css("")
 	#"movie-synopsis_body"
 	#"mop_synopsis-link"

end







end