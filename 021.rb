# Escriba un algoritmo que devuelva el valor en hexadecimal del valor en
# decimal ingresado por el usuario.

@hex_numbers = { 'A' => 10, 'B' => 11, 'C' => 12,
  'D' => 13, 'E' => 14, 'F' => 15  }

@hexadecimal = []

def decimal_to_hex(number)
  remain = remainder(number)
  result_number = division(number)
  insert_and_convert(remain)
  decimal_to_hex(result_number) if result_number != 0
end

def insert_and_convert(remain_number)
  remain_number = @hex_numbers.key(remain_number) if hex_letter?(remain_number)
  @hexadecimal.insert(0, remain_number)
end

def division(number)
  number / 16
end

def remainder(number)
  number % 16
end

def hex_letter?(number)
  @hex_numbers.any? { |k, v| v == number  }
end

decimal_to_hex(525)
puts @hexadecimal.join
