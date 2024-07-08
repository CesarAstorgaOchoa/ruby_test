# Escriba un algoritmo que tome del usuario un número que represente un ángulo
# en radianes y devuelva el equivalente en grados.

def read_from_user
  print 'Ingrese un angulo: '
  input = gets.chomp.to_i
end

def rad_to_grad(grad)
  grad * (180/Math::PI)
end

grad = read_from_user
rad = rad_to_grad(grad)

puts "Angulo en grados #{rad}"
