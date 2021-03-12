require_relative 'bcrypt_module'
 
class Student
  include BCryptModule
  attr_accessor :first_name, :last_name, :email, :username, :password
 
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end
 
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
                  email address: #{@email}"
  end
 
end
 
gabby = Student.new("Gabby", "Dollhouse", "gabby1", "gabby@dollhouse.com",
                      "password1")
 
hashed_password = gabby.create_hash_digest(gabby.password)
 
puts hashed_password