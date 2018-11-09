class NowPlaying::Movie
  attr_accessor :title, :url, :synopsis
  @@all = []

  def initialize(title, url)
    @title = title
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end
end
