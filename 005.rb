# Escriba un algoritmo que tome un texto del usuario y devuelva un array de
# strings, tal que ninguno de sus elementos pase de los 140 caracteres.
# Ninguna palabra debe quedar truncada.

def read_from_user
  input = 'Escriba un algoritmo que tome un texto del usuario y devuelva un array de strings, tal que ninguno de sus elementos pase de los 140 caracteres. Ninguna palabra debe quedar truncada, carateres de mas'
  #input = gets.chomp
  check_array(input)
end

def check_array(text)
  text_array = text.split
  character_counter = 0
  text = ''
  text_array.each do |word|
    if character_counter < 140
      character_counter = text.insert( -1, " #{word}").size
      #character_counter += word.size
    else

    end
  end
  print text
  print character_counter
end


read_from_user
