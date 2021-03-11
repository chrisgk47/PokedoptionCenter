class Pokemon < ActiveRecord::Base
    has_many :adoptions
    has_many :users, through: :adoptions

    def display_pokemons
        Pokemon.all
    end

end



