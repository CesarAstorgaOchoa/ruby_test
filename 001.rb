# Escriba un algoritmo que al ingresar un string, determine si es un palindrómo.

def palindrome?(text)
  text.reverse == text
end

print 'Ingrese una palabra: '
@word = gets.chomp

if palindrome? @word
  puts "La palabra '#{@word}' es un palindromo."
else
  puts "La palabra '#{@word}' no es un palindromo."
end
