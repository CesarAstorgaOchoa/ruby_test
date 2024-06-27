# Dado el siguiente array de hashes, imprimir en qué meses se ha superado
# la meta de los $6'000'000.00 y en que meses no.

require 'json'

@json = File.open('data/incomes_by_month.json', 'r').read
@incomes = JSON.parse(@json, { symbolize_names: true })

GOAL = 6_000_000

def goal_successed(value)
  GOAL < value
end

def goal_reached_months
  @incomes.filter { |i| goal_successed(i[:income]) }
end

def no_reached_goal_months
  @incomes.reject { |i| goal_successed(i[:income]) }
end

def months_only(array)
  array.map { |i| i[:month] }
end

good_ones = months_only(goal_reached_months).join(', ')
bad_ones = months_only(no_reached_goal_months).join(', ')

puts "Los meses que han superado la meta son: #{good_ones}"
puts "Los meses que no han superado la meta son: #{bad_ones}"
