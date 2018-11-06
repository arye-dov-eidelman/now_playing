require 'pry'

class NowPlaying::NowPlaying

	attr_accessor :name, :url, :releasedate 

	@@all = []

	def initialize
 		@name = name
 		@to_dollars = to_dollars
 		@inverse = inverse 
	end

 	def self.all
		@@all
	end

 	def self.create
 		movies = NowPlaying::Movie.all
 		m = movies.filter
 		puts m.description 
 		
  		scraper = Scraper.new 
  		
  		idx = 1
  		scraper.get_titles.each do |title|
  			puts "#{ idx }. #{ title }"
  			idx = idx + 1
  		end
	end





end
