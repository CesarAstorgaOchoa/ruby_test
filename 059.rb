# Complete el siguiente código

class PhoneNumber
  attr_reader :number, :label

  INVALID_PHONE_ERROR_MESSAGE = 'Número de teléfono no válido.'

  def initialize(number, label)
    raise INVALID_PHONE_ERROR_MESSAGE unless valid_phone_number?(number)
    @number = number
    @label = label
  end

  def to_s
    # Casa: 667 111 2222
  end

  private

  def format_number
    # transforma 667111222 en 667 111 2222
  end

  def valid_phone_number?(number)
    # ...
  end

end

class Client
  attr_reader :name, :last_name, :second_last_name

  def initialize(name, last_name, second_last_name)
    @name = name
    @last_name = last_name
    @second_last_name = second_last_name
  end

  def add_phone(label, number)
    # ...
  end

  def full_name
    # ...
  end

  def to_s
    # Nombre: xxxx
    # Telefonos:
    #   1.- Casa: 667 111 2222
  end
end

c = Client.new('Pancracio', 'Montenegro', 'del Real')
c.add_phone('Casa', '6671112222')
c.add_phone('Casa', '6675555555')

puts c.to_s
