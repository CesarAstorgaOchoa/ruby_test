# Imprima todos los números que no son primos entre el 1 y el 100
def prime?(number)

  return true if number <= 1

  (2..number-1).each do |num|
    return false if number % num == 0
  end

end

(1..100).each { |num| puts num unless prime?(num) }
