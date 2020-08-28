require_relative 'crud'

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, Username: #{username}, Email: #{@email}"
    end
end

isaac = Student.new("Isaac", "Chen", "Iscara", "password1", "isaac9503@gmail.com")
john = Student.new("John", "Doe", "Johnny", "password2", "johndoe@gmail.com")

hashed_password = isaac.create_hash_digest(isaac.password)

puts hashed_password