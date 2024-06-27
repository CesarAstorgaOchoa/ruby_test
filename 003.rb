# Escriba un algoritmo que tome una oración del usuario y devuelva, el o
# los caracteres que menos apariciones tienen en la oración.

def read_from_user
  print 'Ingrese una palabra: '
  input = gets.chomp
end

def to_array(text)
  array_text = text.downcase.split('').sort
  array_text.delete(' ')
  array_text
end

def character_counts(text)
  hash_table = {}
  character_array = to_array(text)
  character_array.uniq.each do |character|
    total_characters = character_array.count(character)
    hash_table[character] = total_characters
  end
  hash_table
end

def smallest_number(characters_hash)
  characters_hash.min_by(&:last).last
end

def search_fewer_characters(characters_hash)
  characters_hash.filter { |k, v| v == smallest_number(characters_hash) }
end

def print_results(results_hash)
  characters = results_hash.keys.join(', ')
  number_of_appearances = results_hash.max.last
  puts "Los caracteres con menos apariciones son #{characters} con un número de apariciones de #{number_of_appearances}"
end

input = read_from_user
count_characters = character_counts(input)
results = search_fewer_characters(count_characters)
print_results(results)
