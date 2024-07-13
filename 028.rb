# Escriba un algoritmo que capture del usuario un color en formato HEX y
# devuelva su equivalente en RGB.
#
# Ejemplo:
#   #F2F3AE -> (242, 243, 174)


def read_from_user
  print 'Ingrese un color en formato hexadecimal: '
  input = gets.chomp
end

def rgb_converter(hexadecimal)
  rgb = ''
  rgb += '('+hexadecimal.slice(0..1).hex.to_s+', '
  rgb += hexadecimal.slice(2..3).hex.to_s+', '
  rgb += hexadecimal.slice(4..5).hex.to_s+')'
end

hexadecimal = read_from_user
puts rgb_converter(hexadecimal)
