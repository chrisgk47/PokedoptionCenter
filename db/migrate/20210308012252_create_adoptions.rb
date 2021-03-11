class CreateAdoptions < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptions do |t|
      t.integer :user_id
      t.integer :pokemon_id
      t.integer :happiness
      t.integer :level
    end
  end
end
