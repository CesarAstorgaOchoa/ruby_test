# Escriba un algoritmo que tome un texto de un API y devuelva un string
# similar pero con la primer letra de cada palabra en mayúscula.

require 'httparty'

def get_text
  @url = 'https://devartiral.com/zote_api/random'
  @json = HTTParty.get(@url, verify: false)
  @text = @json["precept"]
end

@text = get_text

def to_array(text)
  array_text = text.split
end

def uppercase_string(text_array)
  new_string = ''
  text_array.each do |word|
    new_string += uppercase_letter(word) + ' '
  end
  new_string
end

def uppercase_letter(word)
  word.capitalize! if letter?(word)
  word
end



def letter?(word)
  word.start_with?(/[[:alpha:]]/)
end

def print_string(string)
  puts string
end

string_array = to_array(@text)
new_string = uppercase_string(string_array)
print_string(new_string)
