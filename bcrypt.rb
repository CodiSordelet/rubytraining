require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'

end

require 'bcrypt'

my_password = BCrypt::Password.create("my password")
puts my_password
my_password.version
my_password.cost
my_password == "my_password"
my_password == "not my password"

my_password = BCrypt::Password.new(
  "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"
)
my_password == "my password"     #=> true
my_password == "not my password" #=> false

