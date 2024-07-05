# Escriba un algoritmo que genere una contraseña aleatoria para una cuenta
# de usuario sujeta a las siguientes condiciones:
# 1.- Debe de tener una longitud de 8 caracteres.
# 2.- Debe incluir valores alfanumerios.
# 3.- Debe incluir por lo menos, uno de los siguientes caracteres especiales:
#       #$%&/()!?._-,+*
# 4.- Debe de tener por lo menos una mayúscula.
# 5.- Debe de tener por lo menos una minúscula.

def uppercase_characters
  ('A'..'Z').to_a.sample
end

def lowercase_characters
  ('a'..'z').to_a.sample(5).join
end

def number_characters
  ('0'..'9').to_a.sample
end

def special_characters
  '#$%&/()!?._-,+*'.split('').sample
end

def random_password
  password_string = lowercase_characters + uppercase_characters
    + number_characters + special_characters
  password_string.split('').shuffle.join
end

puts "password: #{random_password}"
