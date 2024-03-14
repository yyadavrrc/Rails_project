class AddTypeToPokemon < ActiveRecord::Migration[7.1]
  def change
    add_column :pokemons, :type, :integer
  end
end
