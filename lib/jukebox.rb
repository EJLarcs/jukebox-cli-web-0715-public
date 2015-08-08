require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
end

def list(songs)
  songs.each {|song| puts song}
end

def exit_jukebox
  puts "Goodbye"
end

def incorrect_user_input
    begin
      puts "Invalid input, please try again"
    rescue
    end
end

def play(songs)
  list(songs)
  puts "From the list above, please type the number of the song you would like to play or the name of the song?"
  user_input = gets.chomp
  if user_input.class == Fixnum
    if user_input < 0 || user_input > 9
      incorrect_user_input
    else
    puts songs[user_input -1]
    end
  else
    if songs.include?(user_input) == true
      puts user_input
    else
      incorrect_user_input
    end
  end
end

def run(songs)
  menu
end

def menu
puts "Please enter a command:"
user_input = gets.chomp.downcase

      if user_input == "help"
        help
      elsif user_input == "list"
        list(songs)
      elsif user_input == "play"
        play(songs)
      elsif user_input == "exit"
        exit_jukebox
      end
end
