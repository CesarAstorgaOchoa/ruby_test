# Escriba un algoritmo que tome un número n del usuario e imprima en pantalla
# un tríangulo rectangulo con catetos de dicha longitud.
#
# Ejemplo:
#   Sea n = 6, el resultado sera:
#
# *
# * *
# * * *
# * * * *
# * * * * *
# * * * * * *

def read_from_user
  print 'Ingrese un numero: '
  input = gets.chomp.to_i
end

def printer(number)
  (1..number).each { |value| puts '* '*value }
end

number = read_from_user
printer(number)
