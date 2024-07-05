# Escriba un algoritmo que calcule la distancia entre los puntos A y B

@pointA = { x: 45, y: 12}
@pointB = { x: 100, y: 99}

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

first_value = subtract_values(@pointB[:x], @pointA[:x])
second_value = subtract_values(@pointB[:y], @pointA[:y])

puts calculate(first_value, second_value)

