users = {}

puts "Welcome to the authenticator."
25.times { print "-" }
puts

while true
    print "Enter 1 to sign up, 2 to log in to an existing account, 3 to view users, 4 to leave: "
    option = gets.chomp
    puts

    if option == "1" # Sign up
        while true
            print "Enter a username: "
            new_username = gets.chomp
            print "Enter a password: "
            new_password = gets.chomp
            print "Confirm password: "
            cnfm_password = gets.chomp
            puts

            if (new_password != cnfm_password) # If passwords do not match
                puts "Passwords do not match, please try again."
                puts
            elsif users.key?(new_username) # If username can be found in hash
                puts "User already exists, please try a different name."
                puts
            else
                users[new_username] = { username: new_username, password: new_password } # Insert username and password as a hash in the users hash
                puts "User registered."
                puts
                break
            end
        end

    elsif option == "2" # Log in
        attempts = 3

        while attempts > 0
            print "Enter your username: "
            username = gets.chomp
            print "Enter your password: "
            password = gets.chomp
            
            if !users.key?(username)
                puts "User not found, please try again."
                puts
            elsif users[username][:password] != password
                attempts = attempts - 1
                puts "Attempt failed. You have #{attempts} attempts left."
                puts
            else
                puts "Successfully logged in! #{users[username]}"
                puts
                break
            end
        end

        if attempts == 0
            puts "You ran out of attempts, sorry!"
        end
        puts

    elsif option == "3"
        puts "Current users:"
        users.each do |user, id|
            puts user
        end
        puts

    elsif option == "4"
        puts "Thank you, see you soon!"
        break

    else
        puts "That is not a valid input, please try again."
        puts
    end
end
