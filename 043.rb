# Escriba un algoritmo que tome un número n del usuario e imprima en pantalla
# un cuadrado de dicha longitud.
#
# Ejemplo:
#   Sea n = 6, el resultado sera:
#
# * * * * * *
# * * * * * *
# * * * * * *
# * * * * * *
# * * * * * *
# * * * * * *

def read_from_user
  print 'Ingrese un numero: '
  input = gets.chomp.to_i
end

def printer(number)
  (1..number).each do |side_1|
    (1..number).each { |side_2| print "* " }
    puts "\n"
  end
end

number = read_from_user
printer(number)
