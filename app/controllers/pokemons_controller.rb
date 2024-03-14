class PokemonsController < ApplicationController

  def index
    @pokemons = PokemonInfo.paginate(page: params[:page], per_page: 10)
  end

  def show
    @pokemon = PokemonInfo.find(params[:id])
  end

  def search
    search_query = params[:search]
    @search_results = PokemonInfo.where('name LIKE ?', "%#{search_query}%")
  end

  def single
    @pokemon = PokemonInfo.find(params[:id])
  end

end
