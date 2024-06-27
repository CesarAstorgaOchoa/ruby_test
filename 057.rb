# Dado el siguiente array de hashes, imprimir por cada mes a cuanto equivale
# porcentualmente el ingreso con respecto al total del año.

require 'json'

@json = File.open('data/incomes_by_month.json', 'r').read
@incomes = JSON.parse(@json, { symbolize_names: true })
