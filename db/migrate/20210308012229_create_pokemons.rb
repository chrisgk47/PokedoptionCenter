class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :species_name
      t.string :pokemon_type
      t.float :size
      t.float :weight
      t.string :skill
    end
  end
end

