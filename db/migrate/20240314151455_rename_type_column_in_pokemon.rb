class RenameTypeColumnInPokemon < ActiveRecord::Migration[6.0]
  def change
    rename_column :pokemons, :type, :pokemon_type_id
  end
end
