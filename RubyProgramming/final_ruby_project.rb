require_relative 'bcrypt_module'
 
users = [
  { username: 'cindy', password: 'password1' },
  { username: 'mya', password: 'password2' },
  { username: 'tony', password: 'password3' }
]
 
hashed_users = BCryptModule.create_secure_users(users)
puts hashed_users