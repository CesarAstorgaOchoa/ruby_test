# Dados los siguientes arrays, generar una estructura de hash que combine
# los valores en un único array de hashes.

@incomes = [
  2988261,
  5095426,
  8950027,
  6670295,
  6716647,
  8288384,
  3603023,
  1120317,
  6113357,
  2329583,
  9023389,
  9813673
]

@months = [
  'Enero',
  'Febrero',
  'Marzo',
  'Abril',
  'Mayo',
  'Junio',
  'Julio',
  'Agosto',
  'Septiembre',
  'Octubre',
  'Noviembre',
  'Diciembre'
]

puts @months.zip @incomes
