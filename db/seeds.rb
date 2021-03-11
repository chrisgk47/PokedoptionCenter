
User.destroy_all
Adoption.destroy_all
Pokemon.destroy_all

#List_of_pokemon
bulbasaur = Pokemon.create(species_name: "Bulbasaur", pokemon_type: "Grass",size: 0.7, weight: 6.9, skill: "Vine Whip")
ivysaur = Pokemon.create(species_name: "Ivysaur", pokemon_type: "Grass", size: 1.0, weight: 13.0, skill: "Razor Leaf")
venusaur = Pokemon.create(species_name: "Venusaur", pokemon_type: "Grass", size: 12.0, weight: 100.0, skill: "Solar Beam")
charmander = Pokemon.create(species_name: "Charmander", pokemon_type: "Fire", size: 0.6, weight: 8.5, skill: "Ember")
charmeleon = Pokemon.create(species_name: "Charmeleon", pokemon_type: "Fire", size: 1.1, weight: 19.0, skill: "Flamethrower")
charizard = Pokemon.create(species_name: "Charizard", pokemon_type: "Fire", size: 1.7, weight: 90.5, skill: "Fire Blast")
squirtle = Pokemon.create(species_name: "Squirtle", pokemon_type: "Water", size: 0.5, weight: 9.0, skill: "Bubble")
wartortle = Pokemon.create(species_name: "Wartortle", pokemon_type: "Water", size: 1.0, weight: 22.5, skill: "Water Gun")
blastoise = Pokemon.create(species_name: "Blastoise", pokemon_type: "Water", size: 1.6, weight: 85.5, skill: "Hydro Pump")
caterpie = Pokemon.create(species_name: "Caterpie", pokemon_type: "Bug", size: 0.3, weight: 2.9, skill: "String Shot")
metapod = Pokemon.create(species_name: "Metapod", pokemon_type: "Bug", size: 0.7, weight: 9.9, skill: "Harden")
butterfree = Pokemon.create(species_name: "Butterfree", pokemon_type: "Bug", size: 1.1, weight: 32.0, skill: "Confusion")
weedle = Pokemon.create(species_name: "Weedle", pokemon_type: "Bug", size: 0.3, weight: 3.2, skill: "Poison Sting")
kakuna = Pokemon.create(species_name: "Kakuna", pokemon_type: "Bug", size: 0.6, weight: 10.0, skill: "Harden")
beedrill = Pokemon.create(species_name: "Beedrill", pokemon_type: "Bug", size: 1.0, weight: 29.5, skill: "Twin Needle")
pidgey = Pokemon.create(species_name: "Pidgey", pokemon_type: "Flying", size: 0.3, weight: 1.8, skill: "Gust")
pidgeotto = Pokemon.create(species_name: "Pidgeotto", pokemon_type: "Flying", size: 1.1, weight: 30.0, skill: "Twister")
pidgeot = Pokemon.create(species_name: "Pidgeot", pokemon_type: "Flying", size: 1.5, weight: 39.5, skill: "Wing Attack")
rattata = Pokemon.create(species_name: "Rattata", pokemon_type: "Normal", size: 0.3, weight: 3.5, skill: "Quick Attack")
raticate = Pokemon.create(species_name: "Raticate", pokemon_type: "Normal", size: 0.7, weight: 18.5, skill: "Hyper Fang")
spearow = Pokemon.create(species_name: "Spearow", pokemon_type: "Normal", size: 0.3, weight: 2.0, skill: "Peck")
fearow = Pokemon.create(species_name: "Fearow", pokemon_type: "Normal", size: 1.2, weight: 38, skill: "Drill Peck")
ekans = Pokemon.create(species_name: "Ekans", pokemon_type: "Poison", size: 2.0, weight: 6.9, skill: "Bite")
arbok = Pokemon.create(species_name: "Arbok", pokemon_type: "Poison", size: 3.5, weight: 65.0, skill: "Acid")
pikachu = Pokemon.create(species_name: "Pikachu", pokemon_type: "Electric", size: 0.4, weight: 6.0, skill: "Thunder Shock")
raichu = Pokemon.create(species_name: "Raichu", pokemon_type: "Electric", size: 0.8, weight: 30.0, skill: "Thunder")
# sandshrew = Pokemon.create(species_name: "Sandshrew", pokemon_type: "Ground", size: 0.6, weight: 12.0, skill: "Rollout")
# sandslash = Pokemon.create(species_name: "Sandslash", pokemon_type: "Ground", size: 1.0, weight: 29.5, skill: "Earthquake")
# nidoranf = Pokemon.create(species_name: "Nidoran-F", pokemon_type: "Poison", size: 0.4, weight: 7.0, skill: "Fury Swipes")
# nidorina = Pokemon.create(species_name: "Nidorina", pokemon_type: "Poison", size: 0.8, weight: 20.0, skill: "Horn Attack")
# nidoqueen = Pokemon.create(species_name: "Nidoqueen", pokemon_type: "Poison", size: 1.3, weight: 60.0, skill: "Ice Beam")
# nidoranm = Pokemon.create(species_name: "Nidoran-M", pokemon_type: "Poison", size: 0.5, weight: 9.0, skill: "Fury Swipes")
# nidorino = Pokemon.create(species_name: "Nidorino", pokemon_type: "Poison", size: 0.9, weight: 19.5, skill: "Horn Attack")
# nidoking = Pokemon.create(species_name: "Nidoking", pokemon_type: "Poison", size: 1.4, weight: 62.0, skill: "Earthquake")
# clefairy = Pokemon.create(species_name: "Clefairy", pokemon_type: "Fairy",size: 0.6, weight: 7.5, skill: "Metronome")
# clefable = Pokemon.create(species_name: "Clefable", pokemon_type: "Fairy", size: 1.3, weight: 40.0, skill: "Metronome")
# vulpix = Pokemon.create(species_name: "Vulpix", pokemon_type: "Fire", size: 0.6, weight: 9.9, skill: "Ember")
# ninetales = Pokemon.create(species_name: "Ninetales", pokemon_type: "Fire",size: 1.1, weight: 19.9, skill: "Flamethrower")
# jigglypuff = Pokemon.create(species_name: "Jigglypuff", pokemon_type: "Fairy", size: 0.5, weight: 5.5, skill: "Sing")
# wigglytuff = Pokemon.create(species_name: "Wigglytuff", pokemon_type: "Fairy", size: 1.0, weight: 12.0, skill: "Body Slam")
# zubat = Pokemon.create(species_name: "Zubat", pokemon_type: "Poison",size: 0.8, weight: 7.5, skill: "Supersonic")
# golbat = Pokemon.create(species_name: "Golbat", pokemon_type: "Poison", size: 1.6, weight: 55.0, skill: "Confuse Ray")
# oddish = Pokemon.create(species_name: "Oddish", pokemon_type: "Grass", size: 0.5, weight: 5.4, skill: "Absorb")
# gloom = Pokemon.create(species_name: "Gloom", pokemon_type: "Grass",size: 0.8, weight: 8.6, skill: "Poison Powder")
# vileplume = Pokemon.create(species_name: "Vileplume", pokemon_type: "Grass", size: 1.2, weight: 18.6, skill: "Giga Drain")
# paras = Pokemon.create(species_name: "Paras", pokemon_type: "Bug", size: 0.3, weight: 5.4, skill: "Spore")
# parasect = Pokemon.create(species_name: "Parasect", pokemon_type: "Bug",size: 1.0, weight: 29.5, skill: "Giga Drain")
# venonat = Pokemon.create(species_name: "Venonat", pokemon_type: "Bug",size: 1.0, weight: 30.0, skill: "Foresight")
# venomoth = Pokemon.create(species_name: "Venomoth", pokemon_type: "Bug", size: 1.5, weight: 12.5, skill: "Psybeam")
# diglett = Pokemon.create(species_name: "Diglett", pokemon_type: "Ground", size: 0.2, weight: 0.8, skill: "Dig")
# dugtrio = Pokemon.create(species_name: "Dugtrio", pokemon_type: "Ground",size: 0.7, weight: 33.3, skill: "Earthquake")
# meowth = Pokemon.create(species_name: "Meowth", pokemon_type: "Normal",size: 0.4, weight: 4.2, skill: "Pay Day")
# persian = Pokemon.create(species_name: "Persian", pokemon_type: "Normal", size: 1.0, weight: 32.0, skill: "Bite")
# psyduck = Pokemon.create(species_name: "Psyduck", pokemon_type: "Water", size: 0.8, weight: 19.6, skill: "Confusion")
# golduck = Pokemon.create(species_name: "Golduck", pokemon_type: "Water",size: 1.7, weight: 76.6, skill: "Hydro Pump")
# mankey = Pokemon.create(species_name: "Mankey", pokemon_type: "Fighting", size: 0.5, weight: 28.0, skill: "Low Kick")
# primeape = Pokemon.create(species_name: "Primeape", pokemon_type: "Fighting", size: 1.0, weight: 32.0, skill: "Seismic Toss")

#add user instance assigned pokemon
chris = User.create(username: "chris123", password: "abc")
chris.save
carlos = User.create(username: "carlos123", password: "abc")
carlos.save
puts "seeded"


#change password
