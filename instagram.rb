require 'colorize'
class Users
  attr_reader :username, :password, :type 
  attr_writer :username, :password, :type 
  @@tally = 0 
  @@all_users = []
  def initialize(username, password, type)
    @username = username
    @password = password 
    @type = type
    @@all_users << self 
    @@tally += 1
  end

def self.all_users
  @@all_users
end
  
  def like(surfer) 
    puts "#{@username}, #{surfer} just liked your post!"
  end 
  
  def self.alert
    @@all_users.each do |user_info|
      if user_info.type == "Private"
        puts "#{user_info.username}," + " you have a private account. Unfortunately, your data has been compromised. Please change your password immediately!".red
      else 
        puts "#{user_info.username}, calm down. You're fine!"
      end 
    end 
  end 
  def self.tally
    @@tally
  end 
end

puts 
name1 = gets.strip


elaine = Users.new("Elaine", "password123", "Public")
caroline = Users.new("Caroline", "yalaci", "Private")
andrew = Users.new("breadboiiii", "candyland", "Public")
donitaa = Users.new()

puts Users.all_users.inspect

Users.alert
puts Users.tally
























#Notes: Getter and Setter method syntax 
  # def username
  #   @username 
  # end
  
  # def username=(new_username)
  #   @username = new_username
  # end
  
  # def password
  #   @password
  # end 
  
  # def password=(new_password)
  #   @password = new_password
  # end
  
  # def type=(new_type)
  #   @type = new_type
  # end