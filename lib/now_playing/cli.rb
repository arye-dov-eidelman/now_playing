class NowPlaying::CLI

	def call
		system("clear")
		sleep(1)
		puts 'Welcome to the list Movies titles, that are Now playing!'
		input = nil
		until input == "exit"
			puts 'For a list of Movies, type "list",or "exit" to exit.'
			NowPlaying::NowPlaying.create
			input = gets.strip
			case input
			when "list"
			when "exit"
				exit
				input.to_i 
			when "input.to_i = +1 "
				

				number
			end
		end
	end
end  
