module Viewer
  def self.welcome_message
    puts "Hey there, gotta poo?\nI feel ya, I had to poo once,terrible ordeal\n"
    sleep(1.0)
    puts "So let me guess, you need a bathroom?"
  end

  def self.input
    gets.chomp
  end

  def self.get_address
    puts "I'd be happy to help you RUNS to the bathroom...HAR HAR. Address?\nHere is an example of what we're looking for: "
  end

  def self.calculating
    puts "Gotcha, let me take a look. While I'm looking take a few seconds to think about how you got into this situation. Next time just pay attention to where the bathrooms are, stupid."
  end

  def self.found_result
    puts "I've found you a bathroom. Would you like to see it?"
  end

  def self.error
    puts "You didn't say please."
  end

  def self.print_result(address, miles)
    puts "Here you go. The bathroom you should head to is at #{address input}, which is only #{miles input} away. Are you relieved...I HOPE NOT YET!"
  end

end