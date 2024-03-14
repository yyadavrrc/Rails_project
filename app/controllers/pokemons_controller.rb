class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.paginate(page: params[:page], per_page: 10)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def search
    search_query = params[:search]
    @search_results = Pokemon.where('name LIKE ?', "%#{search_query}%")
  end

  def single
    @pokemon = Pokemon.find(params[:id])
  end

end
