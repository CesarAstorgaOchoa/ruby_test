# Imprima los primeros 100 números primos

def prime?(number)

  return false if number <= 1

  (2..number-1).each do |num|
    return false if number % num == 0
  end

end

@max_limit = 100

def limiter(number)
  return false if @max_limit == 0
  @max_limit -= 1 if prime?(number)
end

(1..1000).each { |num| puts num if limiter(num) }
