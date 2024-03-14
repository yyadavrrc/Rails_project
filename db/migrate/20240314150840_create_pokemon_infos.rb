class CreatePokemonInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_infos do |t|
      t.string :name
      t.integer :types

      t.timestamps
    end
  end
end
