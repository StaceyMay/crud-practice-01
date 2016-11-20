class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image
      t.integer :hp
      t.integer :attack
      t.integer :defense

      t.timestamps
    end
  end
end
