# Dado el siguiente array de hashes, imprimir por mes el ingreso acumulado.
# Dicho de otra forma, por cada mes, mostrar los ingresos totales que se han
# generado hasta ese momento.

require 'json'

@json = File.open('data/incomes_by_month.json', 'r').read
@incomes = JSON.parse(@json, { symbolize_names: true })
