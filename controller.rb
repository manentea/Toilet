require_relative 'model'
require_relative 'parse'
require_relative 'viewer'


class Controller
  attr_reader :dir_of_rest
  def initialize(dir_of_rest)
    @dir_of_rest = dir_of_rest
    run
  end

  def welcome
    Viewer.welcome_message
    input = Viewer.input
    if input.downcase.include?('y')
      Viewer.get_address
    else
      return
    end
  end

  def filter(boro)
    dir_of_rest.find {|bath| bath.borough == boro}
  end

  def run
    welcome
    address = Viewer.input
    Viewer.calculating
    Viewer.found_result
    answer = Viewer.input
    Viewer.error
    if answer.downcase.include?('y')
      Viewer.what_borough
      Viewer.input
      Viewer.apology
      Viewer.bad_answer
      puts dir_of_rest.sample
    elsif answer.downcase.include?('serious')
      Viewer.what_borough
      boro = Viewer.input
      Viewer.print_result(filter(boro))
    else
      return
    end
  end
end

Controller.new(Parser.parse('test.csv'))
