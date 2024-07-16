# Escriba un algoritmo que genere un array de longitud n, tal que cada
# elemento sea un número aleatorio entre 0 y 1000.

@n = 20
numbers_array = []


(1..@n).each { |number| numbers_array.push((0..1000).to_a.sample) }

print numbers_array
