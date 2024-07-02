# Escriba un algoritmo que tome del usuario una palabra que
# represente el nombre de una variable en formato snake_case
# y devuelva su equivalente en formato camelCase.

def read_from_user
  print 'Ingrese un nombre de variable en formato snake_case: '
  input = gets.chomp
end

def to_uppercase_array(text)
  text.split('_').map(&:capitalize)
end

def to_downcase(array)
  array[0].downcase
end

def convert_camel_case(array)
  array[0] =  to_downcase(array)
  array.join
end

def print_result(result)
  puts result
end

text = read_from_user
array = to_uppercase_array(text)
camel_case = convert_camel_case(array)
print_result(camel_case)
