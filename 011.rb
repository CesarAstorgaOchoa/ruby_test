# Escriba un algoritmo que al recibir un par de valores a y b representando los
# catetos de un triángulo rectangulo, devuelva el valor de la hipotenusa.
puts 'Ingrese le primer valor: '
first_value = gets.chomp.to_i

puts 'Ingrese el segundo valor: '
second_value = gets.chomp.to_i

def hypotenuse_value(first_value, second_value)
  Math.hypot(first_value, second_value)
end

hypotenuse = hypotenuse_value(first_value, second_value)
puts hypotenuse
