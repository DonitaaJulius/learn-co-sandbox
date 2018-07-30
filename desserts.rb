require 'colorize'

class Pets

  def initialize 
  @tally = 0 
  @animals = {"dogs" => [12, "Yes", "Canis"],
             "cats" => [15, "Yes","Felis"]}
  end
  
  def get_variables
    list_animals = @animals.keys
    @type = list_animals.sample
    @age = @animals[@type][0]
    @smell = @animals[@type][1]
    @latin = @animals[@type][2]
end 

  def q1 
  puts "What is the average age of #{@type}? ".blue
  answer = gets.strip
  
    if answer.to_i == @age
    @tally += 10 
    puts "That is correct!".green
    else 
    puts "No, you failed :(".red
    @tally -= 5
    end 
  end
  def q2
  puts "Do #{@type} have a better sense of smell than humans?".blue
  answer = gets.strip
  
    if answer == @smell
    @tally += 10 
    puts "That is correct!".green
    else 
    puts "No, you failed :(".red
    @tally -= 5
    end 
  end 
  
  def q3
  puts "What is the latin name for #{@type}?".blue
  answer = gets.strip
  
    if answer == @latin
    @tally += 10 
    puts "That is correct!".green
    else 
    puts "No, you failed :(".red
    @tally -= 5
    end 
  end 
  
  def q4 
  puts "How much do you like #{@type} on a scale of 1 to 10?".blue
  answer = gets.strip.to_i
  
  @tally += answer
  if answer > 5 
    puts "You like #{@type} a lot!"
  else
    puts "You don't really like #{@type} a lot."
  end
end 


  def try_quiz
  get_variables
  q1
  q2
  q3
  q4
 
  puts "You have earned #{@tally} points!".magenta

    if @tally > 25
    puts "You are definitely a #{@type} person! Good job :)".green
    elsif @tally > 15
    puts "You know some information about #{@type}. Learn more!".yellow
    else 
    puts "You should learn more about #{@type} and try again!".red
    end 
  end 
end

quiz = Pets.new
quiz.try_quiz

