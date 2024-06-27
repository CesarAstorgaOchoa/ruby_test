# Escriba un algoritmo que tome un texto del usuario y devuelva un array de
# strings, tal que ninguno de sus elementos pase de los 140 caracteres.
# Ninguna palabra debe quedar truncada.

def read_from_user
  input = 'Esto es un texto'
  #input = gets.chomp
end

def convert_to_array(word)
  text = word.split(/\A.{0,3}[a-z]\b/mi)
  print text
end


input = read_from_user
convert_to_array(input)
