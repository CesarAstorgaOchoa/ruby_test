# Escriba un algoritmo que tome del usuario un número que represente un ángulo
# en radianes y devuelva el equivalente en grados.

def read_from_user
  print 'Ingrese un angulo: '
  input = gets.chomp.to_i
end

def rad_to_grad(rad)
  rad * (180/Math::PI)
end

rad = read_from_user
grad = rad_to_grad(rad)

puts "Angulo en grados #{grad}"
