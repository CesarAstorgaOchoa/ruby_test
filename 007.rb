# Escriba un algoritmo que tome del usuario una palabra que
# represente el nombre de una variable en formato snake_case
# y devuelva su equivalente en formato camelCase.

def read_from_user
  print 'Ingrese un nombre de variable en formato snake_case: '
  input = gets.chomp
end

def separate_words(string)
  array_words = string.split('_')
end

def to_camel_case(array_words)
  camel_case = array_words[0].downcase
  i = 1
  until i >= array_words.size do
    camel_case += uppercase_first_letter(array_words[i])
    i += 1
  end
  camel_case
end

def uppercase_first_letter(word)
  word = word.capitalize
  word
end

def print_result(result)
  puts result
end

text = read_from_user
words_array = separate_words(text)
camel_case = to_camel_case(words_array)
print_result(camel_case)
