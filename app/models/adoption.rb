class Adoption < ActiveRecord::Base
    belongs_to :user
    belongs_to :pokemon

    def self.create_adoption
        adoption = Adoption.create(user_id: user.id, pokemon_id: pokemon.id, happiness: 10, level: 5)
    end

end
