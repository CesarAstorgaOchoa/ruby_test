# Dada la siguiente geocerca, escriba un algoritmo que pida al usuario un
# valor lat y lng representando la ubicación de una unidad, y devuleva si
# dicha unidad está dentro o fuera de la geocerca.

@geofence = { radius: 120, lat: 900, lng: 492 }

def subtract_values(value_one, value_two)
  new_value = value_one - value_two
end

def square_number(number)
  number**2
end

def sum_values(first_value, second_value)
  first_value + second_value
end

def square_root(value)
  Math.sqrt(value)
end

def calculate(first_value, second_value)
  square_first_value = square_number(first_value)
  square_second_value = square_number(second_value)
  sum_result = sum_values(square_first_value, square_second_value)
  square_root(sum_result)
end

def in_geofence(first_value, second_value)
  calculate(first_value, second_value) <= @geofence[:radius]
end

def print_result(first_value, second_value)
  message = 'Esta fuera de la geocerca'
  message = 'Esta dentro de la geocerca' if in_geofence(first_value, second_value)
  puts message
end

print 'Ingrese la latidud: '
latitude = gets.chomp.to_i
print 'Ingrese la longitud: '
length = gets.chomp.to_i

first_value = subtract_values(@geofence[:lat], latitude)
second_value = subtract_values(@geofence[:lng], length)
print_result(first_value, second_value)
