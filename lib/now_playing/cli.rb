class NowPlaying::CLI

  def call
    system("clear")
    now_playing
  end

  def get_input
    input = gets.strip
    case input
    when "list"
      now_playing
    when "exit"
      exit
    else
      movie_detail(NowPlaying::Movie.all[input.to_i-1])
    end
  end

  def now_playing
    system("clear")
    puts 'Welcome to the list Movies titles, that are Now playing!'
    NowPlaying::SCRAPER.get_movies
    NowPlaying::Movie.all[0..24].each.with_index(1) do |movie, i|
      puts "#{i} #{movie.title}"
    end
    get_input
  end

  def movie_detail(movie)
    system("clear")
    NowPlaying::SCRAPER.get_movie_details(movie)
    puts movie.title
    puts movie.synopsis
    get_input
  end
end
