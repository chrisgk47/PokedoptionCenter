class Interface

    attr_accessor :user
    attr_reader :prompt


    def initialize
        @prompt = TTY::Prompt.new
    end


    def banner
        system 'clear'
        box = TTY::Box.frame  "Welcome to The Poke'doption Center", "Come in and let them bring you happiness", padding: 1, align: :center
        print box
    end


    def ask_for_login_or_signup
        prompt.select "Would you like to login or register" do |menu|
            menu.choice "Login", -> { login_converter }
            menu.choice "Signup", -> {signup_helper}
        end
    end


    def login_converter
        system 'clear'
        box = TTY::Box.frame  "Please Enter Your Username", padding: 1, align: :center
        print box
        @user = User.login_helper
    end
    

    def signup_helper
        system 'clear'
        puts "You chose register"
        @user = User.signup
    end


    def main_menu
        @user.reload
        system 'clear'
        box = TTY::Box.frame  "Welcome to the Poke'doption Center #{@user.username}", padding: 1, align: :center
        print box
        prompt.select "Please Choose From The Following" do |menu|
            menu.choice "Browse All Pokemon", -> {display_pokemon} 
            menu.choice "Browse Adopted Pokemon", -> {view_adopted_pokemon}
            menu.choice "Exit", -> {exit_greeting}
        end
    end


    def run
        banner
        ask_for_login_or_signup
        main_menu
    end


    def display_pokemon
        all_pokemon = Pokemon.all
        prompt.select "Select a Pokemon to view details" do |menu|
            all_pokemon.each do |pokemon_inst|
                menu.choice "#{pokemon_inst.species_name}", -> {
                    display_species(pokemon_inst)
                } 
                system 'clear'
            end
            menu.choice "Back to Main Menu", -> {main_menu}
        end
    end


    def display_species(pokemon_inst)
        system 'clear'  
            box = TTY::Box.frame "Name: #{pokemon_inst.species_name}",
                "Type: #{pokemon_inst.pokemon_type}",
                "Size: #{pokemon_inst.size} m",
                "Weight: #{pokemon_inst.weight} kg",
                "#{pokemon_inst.species_name} is known for",
                "#{pokemon_inst.skill}", 
                "#{pokemon_inst.species_name} is the perfect Pokemon for you!",
                padding: 3, align: :center, border: :thick
            print box
        prompt.select "" do |menu|
            menu.choice "Select to adopt this Pokemon", -> {adopt_pokemon_helper(pokemon_inst)}
            menu.choice "Back to Main Menu", -> {main_menu}
        end
    end


    def adopt_pokemon_helper(pokemon_inst)
        Adoption.create(user_id: @user.id, pokemon_id: pokemon_inst.id, happiness: 10)
        puts "You have adopted #{pokemon_inst.species_name}"
        sleep 2
        main_menu
    end        


    def remove_adopted_pokemon_helper(pokemon_inst)
        @user.adoptions.find_by({pokemon_id: pokemon_inst.id}).destroy
        main_menu
    end        


    def view_adopted_pokemon
        prompt.select "Select a Pokemon to view its details" do |menu|
            @user.adoptions.map do |adoption|
                menu.choice "#{adoption.pokemon.species_name}", -> {
                    adopted_pokemon_details(adoption)
                } 
            end
                system 'clear'
            menu.choice "Back to Main Menu", -> {main_menu}
        end
    end


    def adopted_pokemon_details(adoption)
        system 'clear' 
        box = TTY::Box.frame "Name: #{adoption.pokemon.species_name}",
            "Type: #{adoption.pokemon.pokemon_type}",
            "Size: #{adoption.pokemon.size} m",
            "Weight: #{adoption.pokemon.weight} kg",
            "#{adoption.pokemon.species_name} is known for",
            "#{adoption.pokemon.skill}", 
            "#{adoption.pokemon.species_name} is the perfect Pokemon for you!",
            padding: 3, align: :center, border: :thick
            print box
            prompt.select "" do |menu|
            menu.choice "Click to Remove this Pokemon from your adopted list", -> {remove_adopted_pokemon_helper(adoption.pokemon)}
            menu.choice "Back to Main Menu", -> {main_menu}
            end
    end


    def exit_greeting
        system 'clear'
        box = TTY::Box.frame  "Thank you for choosing the Poke'doption Center. Goodbye #{@user.username}!", padding: 1, align: :center
        print box
    end
    
end