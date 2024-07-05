# Escriba un algoritmo que capture del usuario la altura en centimetros y el
# peso en kilogramos de una persona y devuelva su indice de masa corporal.

def calculate(kg_value, cm_value)
  meters_value = to_meters(cm_value)
  square_meters = square_number(meters_value)
  kg_value / square_meters.to_f
end

def to_meters(cm)
  cm / 100.to_f
end

def square_number(number)
  number**2
end

print 'Ingrese su peso en kilogramos: '
@kg = gets.chomp.to_i

print 'Ingrese su estatura en centimetros: '
@cm = gets.chomp.to_i

puts calculate(@kg,@cm)
