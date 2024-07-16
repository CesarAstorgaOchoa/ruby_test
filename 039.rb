# Escriba un algoritmo que devuelva dos números a y b tal que, dichos números
# sean valores aleatorios entre el 1 y el 20, y a sea diferente de b.

def take_number
  (1..20).to_a.sample
end

def diff?(number_a, number_b)
  number_b == number_a
end

def take_other(number_a, number_b)
  number_b = take_number
  take_other(number_a, number_b) if diff?(number_a, number_b)
  number_b
end

number_a = take_number
number_b = take_number
number_b = take_other(number_a, number_b)

puts " primer numero: #{number_a} "
puts " segundo numero: #{number_b} "
