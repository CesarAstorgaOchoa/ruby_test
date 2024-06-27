# Escriba un algoritmo que tome el siguiente texto y devuelva el número de
# caracteres y el número de palabras en dicho texto.

koan = File.open('data/koan.txt','r').read

def count_characters(text)
  text.size
end

def count_words(text)
  text.split(' ').size
end

def count_characters_words(word)
  total_characters = count_characters(word)
  total_words = count_words(word)
  puts "la palabra contiene #{total_words} palabras y #{total_characters} caracteres"
end

count_characters_words(koan)
