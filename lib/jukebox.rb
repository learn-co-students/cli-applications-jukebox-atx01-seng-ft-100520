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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song, ind|
    puts "#{ind + 1}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip

  if input.to_i == 0
    if songs.include? input
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
  elsif input.to_i != 0
    if songs[input.to_i] != nil
      puts "Playing #{songs[input.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  input = gets.strip

  until input == "exit"
    if input == "help"
      help
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "list"
      list(songs)
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "play"
      play(songs)
      puts "Please enter a command:"
      input = gets.strip
    end
  end
  exit_jukebox
end