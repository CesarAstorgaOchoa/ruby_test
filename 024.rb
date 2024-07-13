# Dado un valor ingresado por el usuario que represente un número de horas
# imprima su equivalente en segundos

def read_from_user
  print 'Ingrese las horas: '
  hours = gets.chomp.to_i
end

def hours_to_seconds(hour)
  hour * 3600
end

hour = read_from_user
puts hours_to_seconds(hour)
