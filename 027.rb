# Escriba un algoritmo que pida al usuario el año, mes y día de nacimiento y
# calcule la edad actual de la persona.
# Si la persona tiene menos de 1 año de vida, imprima la edad en número de días.

require 'date'
class AgeCalculator

  def initialize(year, month, day)
    @birth_date = Date.new(year, month, day)
  end

  def calculate
    today = Date.today
    @age = today.year - @birth_date.year
    @age -= 1 if today.yday < @birth_date.yday
    @age = today.yday - @birth_date.yday if today.year == @birth_date.year
  end

  def print_result
    puts @age
  end

end

print 'Ingrese el día: '
day = gets.chomp.to_i

print 'Ingrese el mes: '
month = gets.chomp.to_i

print 'ingrese el año: '
year = gets.chomp.to_i

age_calc = AgeCalculator.new(year, month, day)
age_calc.calculate
age_calc.print_result
