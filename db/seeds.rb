require 'httparty'

# Fetch data from the API
PokemonType.destroy_all
count = 0
response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100') #data source 1
#<img src="https://source.unsplash.com/random/400x500?<%= @pokemon_name&.name %>"/> #data source 2
pokemon_data = JSON.parse(response.body)

pokemon_types = ['grass', 'fire', 'water', 'electric', 'psychic', 'ground', 'bug', 'flying', 'poison', 'steel', 'ghost', 'rock', 'fighting', 'normal', 'fairy']

pokemon_types.each do |type|
  type = PokemonType.create(name: type)
  puts(type.name)
end

pokemon_data['results'].each do |pokemon|
  count += 1
  name = pokemon['name']

  responsex = HTTParty.get(pokemon['url'])
  pokemon_data_1 = JSON.parse(responsex.body)

  type = pokemon_data_1['types'].first['type']['name'] # Access the first type

  type_id = PokemonType.find_by(name: type).id
  aPokemon = PokemonInfo.create(name: name, pokemon_type_id: type_id) # Change 'type' to 'pokemon_type_id'
  puts(aPokemon)
end
