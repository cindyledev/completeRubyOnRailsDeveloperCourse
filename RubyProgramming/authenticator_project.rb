require 'json'
file = File.read('./users.json')
data = JSON.parse(file)

# array of users to store username and password
users_array = [
  { username: 'cindy', password: 'password1' },
  { username: 'mya', password: 'password2' },
  { username: 'tony', password: 'password3' }
]

class User
  attr_accessor :username, :password
  
  def initialize(username, password)
    @username = username
    @password = password
  end 
  
  def to_s
    "Username: #{@username}, Password: #{@password}"
  end
end

users = data["users"].map { |rd| User.new(rd['username'], rd['password']) }
puts users
puts users_array

# Authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users)
  list_of_users.each do | user_record |
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Incorrect credentials"
end

# Program execution flow
puts "Welcome to the Authenticator Application"
25.times { print '-' }
puts
puts "This program will take input from the user and compare the password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == 'n'
  attempts += 1
end
puts "You have exceeded the number of attempts (4)" if attempts == 4