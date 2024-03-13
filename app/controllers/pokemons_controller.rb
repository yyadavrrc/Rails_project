class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.paginate(page: params[:page], per_page: 10)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def search
    query = params[:query]
    type = params[:type]
    pokemons = Pokemon.includes(:pokemon_type)

    if type.present?
      @search_results = pokemons.where('name LIKE ? AND pokemon_types.name LIKE ?', "%#{query}%", "%#{type}%")
    else
      @search_results = pokemons.where('name LIKE ?', "%#{query}%")
    end
  end

  def single
    @pokemon_name = Pokemon.find(params[:id])
  end
end
