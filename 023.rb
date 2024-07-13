# Escriba un algoritmo que pregunte al usuario la distancia en metros que
# le separa de un edificio y el angulo de inclinación de su cabeza para ver la
# punta del mismo, y devuelva la altura del edificio.

print 'Ingrese la distancia: '
@distance = gets.chomp.to_i

print 'Ingrese el angulo de inclinación: '
@degree_angle = gets.chomp.to_i

def grad_to_rad(grad)
  grad * (Math::PI/180)
end

def calculate
  @distance * (Math.tan(@rad_angle))
end

@rad_angle = grad_to_rad(@degree_angle)
puts calculate
