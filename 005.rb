# Escriba un algoritmo que tome un texto del usuario y devuelva un array de
# strings, tal que ninguno de sus elementos pase de los 140 caracteres.
# Ninguna palabra debe quedar truncada.

def read_from_user
  input = 'Escriba un algoritmo que tome un texto del usuario y devuelva un array de strings, tal que ninguno de sus elementos pase de los 140 caracteres. Ninguna palabra debe quedar truncada, carateres de mas'
  #input = gets.chomp
end

def to_words_array(text)
  words_array = text.split
end

def all_in_one(array)
  new_string = ''
  array_characters = []
  array.each do |word|
    if is_max_characters?(new_string, word)
      array_characters.push(new_string + " ")
      new_string = word + " "
    else
    new_string += word + " "
    end
  end
  array_characters.push(new_string)
  print array_characters
end

def is_max_characters?(new_string, word)
  true if new_string.size + word.size + 1 > 140
end

user_text = read_from_user
words_array = to_words_array(user_text)
all_in_one(words_array)


# def get_string(text)
#   words_array = text.split(/^.{0,30}\b/)
#   print words_array
# end

# def check_array(text)
#   text_array = text.split
#   character_counter = 0
#   text = ''s
#   text_array.each do |word|
#     if character_counter < 140
#       character_counter = text.insert( -1, " #{word}").size
#       #character_counter += word.size
#     end
#   end
#   print text
#   print character_counter
# end
