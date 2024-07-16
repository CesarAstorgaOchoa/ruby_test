# Escriba un algoritmo que, tomando un número de jugadores 2^n a participar
# en un torneo, organice de forma aleatoria la primer ronda de encuentros.

@n = 4

def create_players
  (1..2**@n).to_a
end

def game(array_players)
  team_a = array_players.sample(8)
  team_b = array_players.difference(team_a)
  print team_a
  print team_b
end



array_players = create_players
game(array_players)
