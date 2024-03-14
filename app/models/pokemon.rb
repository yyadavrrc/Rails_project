class Pokemon < ApplicationRecord
  self.table_name = 'pokemons'
  self.inheritance_column = nil  # Disable STI for the 'type' column
  belongs_to :pokemon_type
end
