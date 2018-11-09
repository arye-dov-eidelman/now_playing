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
 		m = movies # need to add .filter method with do block
 		# puts m.description  # Trying to add loop of movies description
 		
  		scraper = NowPlaying::Scraper.new 
  		
  		idx = 1
  		scraper.get_titles.each do |title|
  			puts "#{ idx }. #{ title }"
  			idx = idx + 1
  		end
	end





end
