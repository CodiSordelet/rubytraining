users = [
    {username: 'codi', password: 'codester'},
    {username: 'brenda', password: 'brenster'},
    {username: 'torian', password: 'torester'},
    {username: 'peter', password: 'petester'},
]

p "Welcome to the autheticator"
arr = (0..15).to_a
arr.each {
    print '-'
}

puts  "\nThis program will take input from the user and compare password" 
puts "Username:"


found_user = nil
times_executed = 0
username = nil
selected_user = nil

while selected_user == nil && times_executed < 4
    puts "Enter your username:"

    username = gets.chomp
    selected_user = users.select {
        | user | user[:username] == username 
    }[0]

    if selected_user == nil
      puts 'Incorrect username! Please try again.'
      times_executed += 1
    else  
        break
    end
end

puts selected_user
  

password = nil
password_attempts = 0

while password != selected_user[:password] && password_attempts < 4
  puts 'Enter your password'
    password = gets.chomp
        if selected_user[:password] == password
          puts 'You are now logged in.'
        else 
            puts 'The password you entered is incorrect.'
            password_attempts += 1
        end
end