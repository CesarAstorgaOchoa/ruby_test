# Escriba un algoritmo que tome un texto del usuario y devuelva un array de
# strings, tal que ninguno de sus elementos pase de los 140 caracteres.
# Ninguna palabra debe quedar truncada.

#Escriba un algoritmo que tome un texto del usuario y devuelva un  array de strings, tal que ninguno de sus elementos pase de los 140 caracteres. Ninguna palabra debe quedar trunca. texto para rellenar la palabra hola hola

def read_from_user
  print "Ingrese un texto: "
  input = gets.chomp
end

def to_words_array(text)
  words_array = text.split
end

def create_text_array(array)
  new_string = ''
  array_characters = []
  array.each do |word|
    if is_max_characters?(new_string, word)
      array_characters.push(new_string)
      new_string = ''
    end
    new_string += word + ' '
  end
  array_characters.push(new_string)
end

def is_max_characters?(new_string, word)
  true if new_string.size + word.size + 1 > 140
end

def print_array(text_array)
  text_array.each do |text|
    puts text
  end
end

user_text = read_from_user
words_array = to_words_array(user_text)
text_array = create_text_array(words_array)
print_array(text_array)
