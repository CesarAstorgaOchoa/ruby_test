# Escriba un algoritmo que tome un texto de un API y devuelva un string
# similar pero con la primer letra de cada palabra en mayúscula.

require 'httparty'

def get_text
  @url = 'https://devartiral.com/zote_api/random'
  @json = HTTParty.get(@url, verify: false)
  @text = @json["precept"]
end

@text = get_text

def uppercase_text(text)
  text.split.map(&:capitalize).join(' ')
end

def print_string(string)
  puts @text
  puts string
end

string_array = uppercase_text(@text)
print_string(string_array)
