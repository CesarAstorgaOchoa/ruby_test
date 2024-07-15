# Escriba un algoritmo que imprima en pantalla
# los números del 1 al 100 pero reemplazando
# todos los múltiplos de 3 por la palabra "bizz"
# y todos los múltiplos de 5 por la palabra "buzz".
# Si un número es múltiplo de 3 y de 5, debera
# imprimir en su lugar, la palabra "bizzbuzz".

puts 'Bizz-buzz Game!'

(1..100).each do |num|
  message = ''

  message += 'bizz' if num % 3 == 0
  message += 'buzz' if num % 5 == 0

  puts "#{num} #{message}"
end
