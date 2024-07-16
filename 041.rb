# Escriba un algoritmo que tome un número del usuario y genere la tabla de
# muliplicar de dicho número:
#
# Ejemplo:
#   para n = 5, será:
# 1 X 5 = 5
# 2 X 5 = 10
# ...
# 10 X 5 = 50

def read_from_user
  print 'Ingrese un numero: '
  input = gets.chomp.to_i
end

def generate_table(number)
  (1..10).each { |v| puts " #{v} X #{number} = #{number * v} " }
end

number = read_from_user
generate_table(number)
