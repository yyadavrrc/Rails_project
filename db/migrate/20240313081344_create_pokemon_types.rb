class CreatePokemonTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
