# Complete el siguiente código.

module TypeValidation
  def polynomial?(object)
    # ...
  end

  def monomial?(object)
    # ...
  end
end

class Monomial
  include TypeValidation

  attr_reader :coefficient, :degree

  def initialize(coefficient, degree = 0)
    @coefficient = coefficient
    @degree = degree
  end

  def +(value)
  end

  def to_s
    # -42x^3
  end

  private

  def add_polynomial(polynomial)
    # ...
  end

  def add_monomial(monomial)
    # ...
  end

  def add_number(number)
    # ...
  end
end

class Polynomial
  include TypeValidation

  def initialize(monomials)
    @monomials = monomials
  end

  def +(value)
  end

  def to_s
    # x^4 +8x^2 -3x -12
  end

  private

  attr_reader :monomials

  def reduce
    # simplifica el polinomio sumando los monomios que compartan el mismo grado
  end

  def add_polynomial(polynomial)
    # ...
  end

  def add_monomial(monomial)
    # ...
  end

  def add_number(number)
    # ...
  end
end

monomial1 = Monomial.new(-42, 3)
monomial2 = Monomial.new(16)
polynomial1 = monomial1 + monomial2

monomial3 = Monomial.new(6, 2)
monomial4 = Monomial.new(12, 3)
polynomial2 = polynomial1 + monomial3 + monomial4

puts polynomial2.to_s
