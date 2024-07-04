# Escriba un algoritmo que al recibir un valor númerico, devuelva si es
# múltiplo de 3 y 5

def read_from_user
  print 'Ingrese un numero: '
  input = gets.chomp.to_i
end

def multiple?(number)
  number % 3 == 0 && number % 5 == 0
end

def print_result(result)
  message = 'No es multiplo de ambos'
  message = 'Si es multiplo de ambos' if multiple?(result)
  puts message
end

number = read_from_user
print_result(number)
