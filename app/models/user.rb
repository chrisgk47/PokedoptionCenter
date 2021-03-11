require 'pry'
class User < ActiveRecord::Base

    has_many :adoptions
    has_many :pokemons, through: :adoptions

    

    def self.login_helper
        puts "Enter username:"
        username = STDIN.gets.chomp
        puts "Enter password"
        password = STDIN.gets.chomp
        user_instance = User.find_by(username: username, password: password)

        until user_instance 
            sleep 1
            system 'clear'
            puts "Please type in the correct username or password"
            user_instance = User.login_helper
        end
        user_instance
    end

    def self.signup
        puts "Choose a username"
        username = STDIN.gets.chomp
        puts "Choose a password"
        password = STDIN.gets.chomp
        user_instance = User.create(username: username, password: password)
    end

   

end

