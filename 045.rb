# Escriba un algoritmo que tome un número n del usuario e imprima en pantalla
# un tríangulo equilatero con altura de dicha longitud.
#
# Ejemplo:
#   Sea n = 6, el resultado sera:
#
#           * *
#         * * * *
#       * * * * * *
#     * * * * * * * *
#   * * * * * * * * * *
# * * * * * * * * * * * *

def read_from_user
  print 'Ingrese un numero: '
  input = gets.chomp.to_i
end

def printer(number)
  (1..number).each { |value| puts ' '*(number-value) + '*'*(2*value) }
end

num = read_from_user
printer(num)
