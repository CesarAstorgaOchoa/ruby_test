# Escriba un algoritmo que tome un texto del usuario y devuelva un array de
# strings, tal que ninguno de sus elementos pase de los 140 caracteres.
# Ninguna palabra debe quedar truncada.

def read_from_user
  input = 'Escriba un algoritmo que tome un texto del usuario y devuelva un array de strings, tal que ninguno de sus elementos pase de los 140 caracteres. Ninguna palabra debe quedar truncada, carateres de mas'
  #input = gets.chomp
  get_string(input)
end



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


read_from_user
