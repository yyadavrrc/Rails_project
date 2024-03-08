require 'httparty'
# Fetch data from the API
response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100')
pokemon_data = JSON.parse(response.body)
# Extract names from the API response and populate the database
pokemon_data['results'].each do |pokemon|
  name = pokemon['name']
  aPokemon = Pokemon.create(name: name)
  puts(aPokemon.name)
end