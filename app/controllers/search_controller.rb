class SearchController < ApplicationController
  def index
    search_query = params[:search]
    pokemon_type_id = params[:id]

    # Perform a simple search based on the search query
    pokemon_infos = PokemonInfo.where('name LIKE ?', "%#{search_query}%")

    if pokemon_type_id.present? && pokemon_type_id != "all"
      # Filter the results based on the specified type ID
     # Convert the pokemon_type_id to an integer
     pokemon_type_id = pokemon_type_id.to_i

     # Filter the results based on the specified type ID
     @pokemons = pokemon_infos.select { |pokemon_info| pokemon_info.pokemon_type_id == pokemon_type_id }
    else
      # If no type ID is specified or it's set to "all", return all search results
      @pokemons = pokemon_infos
    end
  end
end
