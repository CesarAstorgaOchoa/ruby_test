# Escriba un algoritmo que tome como input del usuario un mesaje
# e imprima en pantalla el mismo mensaje encriptado con el cifrado ROT13:
# https://en.wikipedia.org/wiki/ROT13

def read_from_user
  print 'Escriba el mensaje: '
  input = gets.chomp
end

def string_uppercase
  ('A'..'Z').to_a.join
end

def string_downcase
  ('a'..'z').to_a.join
end

def array_values
  'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm '.split('')
end

def array_keys
  [string_uppercase + string_downcase + ' '].join.split('')
end

def create_hash
  Hash[array_keys.zip(array_values)]
end

def decrypt_rot13(text)
  rot13_hash = create_hash
  message = ''
  text.each_char { |char| message += rot13_hash[char]}
  message
end

text = read_from_user
message = decrypt_rot13(text)
puts "Mensaje: #{message}"
