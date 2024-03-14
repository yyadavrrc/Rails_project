class RenameTypeColumnInPokemonInfo < ActiveRecord::Migration[7.1]
  def change
    rename_column :pokemon_infos, :type, :pokemon_type_id
  end
end
