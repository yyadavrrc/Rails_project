Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get '/', to: 'home#index'

  get '/pokemons', to: 'pokemons#index'

  get '/pokemon', to: 'pokemons#show'

  get '/pokemon/detail', to: 'pokemons#single'


  # Defines the root path route ("/")
  # root "posts#index"
end
