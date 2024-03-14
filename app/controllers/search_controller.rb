class SearchController < ApplicationController
  def index
    search_query = params[:search]
    @pokemons = Pokemon.where('name LIKE ?', "%#{search_query}%")
  end
end
