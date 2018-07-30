def names 
  your_name = gets.strip
  puts "What is your name? "
  puts "My name is #{your_name}"
  second_name = gets.strip
  puts "What is your friend's name?"
  puts "My friend's name is #{second_name}"
  third_name = gets.strip
  puts "What is your other friend's name?"
  puts "My other friend's name is #{third_name}"
  puts "Hello " +  your_name + "!"
  puts "Hello " +  second_name + "!"
  puts "Hello " +  third_name + "!"
end

names
