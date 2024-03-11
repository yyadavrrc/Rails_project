class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.paginate(page: params[:page], per_page: 10)
  end
  def show
    name = params[:search]
    @pokemon_name = Pokemon.where("name LIKE ?", "%#{name}%")
  end
  def single
    @pokemon_name = Pokemon.find(params[:id])
  end

end
