class String
  def integer?
    self.to_i.to_s == self
  end
end

class Console
  def read_i(label)
    print label
    value = gets.chomp
    return value.to_i if value.integer?
    puts 'Valor incorrecto.'
    read_i label
  end

  def read_confirmation(label)
    print "#{label} [s/n]"
    value = gets.chomp
    comfirms?(value)
  end

  private

  def comfirms?(word)
    keys = ['y', 'yes', 's', 'si']
    keys.include? word.downcase
  end
end
