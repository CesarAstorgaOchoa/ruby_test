# Imprima todos los números primos que hay entre el 1 y el 100

def prime?(number)

  return false if number <= 1

  (2..number-1).each do |num|
    return false if number % num == 0
  end

end

(1..100).each { |num| puts num if prime?(num) }
