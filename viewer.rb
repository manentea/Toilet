module Viewer
  def self.welcome_message
    system 'clear'
    puts "Hey there, gotta poo?\nI feel ya, I had to poo once,terrible ordeal\n"
    sleep(1.0)
    puts "So let me guess, you need a bathroom?"
  end

  def self.input
    gets.chomp
  end

  def self.get_address
    puts "I'd be happy to help you RUNS to the bathroom...HAR HAR. Address?\nHere is an example of what we're looking for: 48 Wall St., New York, NY"
  end

  def self.calculating
    puts "\nGotcha, let me take a look. While I'm looking take a few seconds to think about how you got into this situation. Next time just pay attention to where the bathrooms are, stupid."
  end

  def self.found_result
    puts "I've found you a bathroom. Would you like to see it?"
  end

  def self.error
    puts "You didn't say please."
  end

  def self.print_result(bathroom)
    puts "Here you go. The bathroom you should head to is at #{bathroom.name}, #{bathroom.location}. Are you relieved...I HOPE NOT YET!"
  end

  def self.what_borough
    puts "What borough are you looking for a bathroom in?"
  end

  def self.bad_answer
    puts "Good news, I found a bathroom in New Jersey!\nIs that what you wanted?"
  end

  def self.apology
    puts "Sorry, I'm not very good at this. Also, I've been drinking."
  end

  def self.game_over
    puts "Screw this, I'm going out for a smoke. Guess you're just gonna shit yourself. Adios."
  end

  def self.what_borough
    puts "What borough are you looking for a bathroom in?"
  end

  def self.bad_answer
    puts "Good news, I found a bathroom in New Jersey!\nIs that what you wanted?"
  end

  def self.apology
    puts "Sorry, I'm not very good at this. Also, I've been drinking."
  end

  def self.game_over
    puts "Screw this, I'm going out for a smoke. Guess you're just gonna shit yourself. Adios."
  end

end
