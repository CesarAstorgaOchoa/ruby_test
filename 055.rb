# Dado el siguiente array de hashes, imprimir el mes y el ingreso ordenados
# por el mes que tenga más ingreso hasta el que tenga el menor.

require 'json'

@json = File.open('data/incomes_by_month.json', 'r').read
@incomes = JSON.parse(@json, { symbolize_names: true })
