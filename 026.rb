# Escriba un algoritmo que tome del usuario el año, mes y día de un producto
# y determine sí la fecha de expiración ya se ha excedido.

require 'date'
class ExpirationDay

  def initialize(year, month, day)
    @date = Date.new(year, month, day)
  end

  def compare_date
    @message = 'Ya expiro' if @date > Date.today
    @message = 'No ha expirado' if @date <= Date.today
  end

  def print_result
    puts @message
  end

end

print 'Ingrese el día: '
day = gets.chomp.to_i

print 'Ingrese el mes: '
month = gets.chomp.to_i

print 'ingrese el año: '
year = gets.chomp.to_i

expiration = ExpirationDay.new(year, month, day)
expiration.compare_date
expiration.print_result
