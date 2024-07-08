# Escriba un algoritmo que tome del usuario un número que represente un ángulo
# en grados y devuelva el equivalente en radianes.

def read_from_user
  print 'Ingrese el angulo: '
  input = gets.chomp.to_i
end

def grad_to_rad(grad)
  grad * (Math::PI/180)
end

grad = read_from_user
rad = grad_to_rad(grad)

puts "Angulo en radianes: #{rad}"
