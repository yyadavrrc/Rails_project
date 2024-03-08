class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end
   def show
    @pokemon_name = params[:name]
  end
end
