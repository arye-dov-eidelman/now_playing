require_relative './now_playing/version'
require_relative './now_playing/scraper.rb'
require_relative './now_playing/cli.rb'
require_relative './now_playing/movie.rb'

require 'nokogiri'
require 'open-uri'
require 'pry'

module NowPlaying
  SCRAPER = Scraper.new
end
