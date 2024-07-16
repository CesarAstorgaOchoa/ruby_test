# Escriba un algoritmo que genere las tablas de múltiplicar de los números del
# 1 al 10


(1..10).each do |number|
  (1..10).each { |mult| puts " #{number} X #{mult} = #{number * mult}" }
  puts "\n"
end
