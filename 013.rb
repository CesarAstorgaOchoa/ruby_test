# Escriba un algoritmo que calcule el factorial de un número ingresado por el
# usuario.

def read_from_user
  input = 6
end

@result = 1
def factorial(end_number, start_number = 1)
  @result += start_number * @result
  start_number += 1
  factorial(end_number, start_number) if start_number < end_number
end

factorial(0)
puts @result
