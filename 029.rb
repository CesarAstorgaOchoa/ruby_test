# Escriba un algoritmo que capture del usuario un color en formato RGB y
# devuelva su equivalente en HEX.
#
# Ejemplo:
#   (60, 136, 126) -> #3C887E

def read_from_user
  print 'Inserte el color en formato RGB: '
  input = gets.chomp.to_s
end

def convert_to_hex(rgb)
  array_rgb = rgb.scan(/\d+/)
  array_rgb = array_rgb.map(&:to_i)
  array_rgb.map { |value| value.to_s(16).upcase }
end

def print_result(result)
  result.unshift('#')
  puts result.join
end

rgb = read_from_user
result = convert_to_hex(rgb)
print_result(result)
