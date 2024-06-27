# Escriba un algoritmo que tome dos strings del usuario y determine si ambos
# strings son anagramas el uno del otro.

class String
  def anagram?(text)
    self.sort == text.sort
  end

  def sort
    self.downcase.split('').sort.join
  end

  print 'Ingrese la primera palabra: '
  @word1 = gets.chomp

  print 'Ingrese la segunda palabra: '
  @word2 = gets.chomp

  if @word1.anagram? @word2
    puts 'Son anagramas'
  else
    puts 'no son anagramas'
  end


end

#'Zapato'.anagram?('alfabeto')
