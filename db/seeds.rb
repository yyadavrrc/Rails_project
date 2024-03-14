require 'httparty'
# Fetch data from the API
Pokemon.destroy_all
count = 0
response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100')
pokemon_data = JSON.parse(response.body)
# Extract names from the API response and populate the database
pokemon_data['results'].each do |pokemon|
  count += 1
  name = pokemon['name']
  aPokemon = Pokemon.create(name: name)
  puts(aPokemon.name)

  responsex = HTTParty.get(pokemon['url'])
  pokemon_data_1 = JSON.parse(responsex.body)

  # Accessing and displaying each type
  pokemon_data_1['types'].each do |type_data|
    type_url = type_data['type']['url']
    type_response = HTTParty.get(type_url)
    type_info = JSON.parse(type_response.body)
    type_name = type_info['name']
    puts "Type: #{type_name}"
  end

  puts(count)
end

# db/seeds.rb

pokemon_types = ['grass', 'fire', 'water', 'electric', 'psychic', 'ground', 'bug', 'flying', 'poison', 'steel', 'ghost', 'rock', 'fighting', 'normal', 'fairy'] # Add more types as needed

pokemon_types.each do |type|
  PokemonType.create(name: type)
end
