Rails.application.routes.draw do
  get 'search/index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Define routes for PokemonsController
  get '/', to: 'home#index'
  get '/pokemons', to: 'pokemons#index', as: 'pokemons'
  get '/pokemons/:id', to: 'pokemons#show', as: 'pokemon'
  get '/pokemon/search', to: 'search#index', as: 'search'

  get '/pokemon/detail', to: 'pokemons#single', as: 'single_pokemon'

  # Defines the root path route ("/")
  # root "posts#index"    error:- Routing Error
end
