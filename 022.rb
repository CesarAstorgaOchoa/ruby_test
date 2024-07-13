# Escriba un algoritmo que capture del usuario, un valor numerico que
# represene el total de una venta y otro valor númerico que represente la
# cantidad en efectivo con que se desea cubrir ese costo. Debe devolver el
# cambio en moneda nacional priorizando la mayor denominación posible.
# Solo cubra el caso de valores enteros.
#
# Ejemplo:
#   para total = 394 y efectivo = 500, deberá imprimir:
#
# 1 billete de $100
# 1 moneda de $5
# 1 moneda de $1
print 'Ingrese el total de la venta: '
@total_value = gets.chomp.to_i

print 'Ingrese el pago: '
@pay_value = gets.chomp.to_i

@array_bills = [500, 200, 100, 50, 20]
@array_coins = [10, 5, 2, 1]
@change_hash = {}

def bill_counter(change)
  @array_bills.each do |bill|
    @change_hash.store(bill, change / bill)
    change %= bill
  end
  change
end

def coin_counter(change)
  @array_coins.each do |coin|
    @change_hash.store(coin, change / coin)
    change %= coin
  end
end

def change_calculator
  @total_value - @pay_value
end

total = change_calculator
bill_change = bill_counter(total)
coin_counter(bill_change)
puts @change_hash
