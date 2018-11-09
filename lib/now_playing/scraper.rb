class NowPlaying::Scraper
	
  def initialize 
		@domain = "https://www.fandango.com"
    @html = Nokogiri::HTML(open("https://www.fandango.com/moviesintheaters"))
  end

  def get_movies
    cards = @html.css(".movie-ls-group .visual-item .visual-title")
    cards.each do |card|
      title = card.text.strip
			url = card.attributes["href"].value.gsub(/http/, 'https')
      NowPlaying::Movie.new(title, url)
    end
  end

	def get_movie_details(movie)
		# binding.pry
		movie_page = Nokogiri::HTML(open(movie.url))
		synopsis_url = movie_page.css('.mop__synopsis-link')[0].attributes["href"].value
		synopsis_page = Nokogiri::HTML(open(@domain + synopsis_url))
		movie.synopsis = synopsis_page.css('.movie-synopsis__body')[0].text.strip
  end
end
