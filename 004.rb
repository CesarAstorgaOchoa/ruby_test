# Escriba un algoritmo que tome el siguiente texto y devuelva el número de
# caracteres y el número de palabras en dicho texto.

input = 'El sentido de la birria'

def to_characters_array(text)
  text_array = text.downcase.split('')
  text_array.delete(' ')
  text_array
end

def to_words_array(text)
  words_array = text.downcase.split(' ')
end

def character_counter(word)
  characters_array = to_characters_array(word)
  characters_array.count
end

def words_counter(word)
  words_array = to_words_array(word)
  words_array.count
end

def count_characters_words(word)
  total_characters = character_counter(word)
  total_words = words_counter(word)
  puts "la palabra contiene #{total_words} palabras y #{total_characters} caracteres"
end

count_characters_words(input)
