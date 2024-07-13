# Dado un valor ingresado por el usuario que represente un número de segundos
# imprima su equivalente en horas, minutos y segundos.

def read_from_user
  print 'Ingrese los segundos: '
  input = gets.chomp.to_i
end

class Hours

  def initialize(sec)
    @seconds = sec
  end

  def second_to_hours
    @seconds / 3600
  end

  def rest_seconds
    @seconds % 3600
  end

end

class Minutes

  def initialize(sec)
    @seconds = sec
  end

  def seconds_to_minutes
    @seconds / 60
  end

  def rest_seconds
    @seconds % 60
  end

end

seconds = read_from_user

hr = Hours.new(seconds)
total_hours = hr.second_to_hours
rest_total_hour = hr.rest_seconds

min = Minutes.new(rest_total_hour)
total_minutes = min.seconds_to_minutes

total_seconds = min.rest_seconds

print " #{seconds} segundos son: #{total_hours} horas, #{total_minutes} minutos y #{total_seconds} segundos"
