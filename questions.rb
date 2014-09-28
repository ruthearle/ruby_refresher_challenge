def select_elements_starting_with_a(array)
	array.select! { |word| word.start_with?("a")}
end

def select_elements_starting_with_vowel(array)
	array.select! { |word| word.start_with?('a', 'e', 'i', 'o', 'u')}
end

def remove_nils_from_array(array)
	# array.delete_if { |word| word == nil }
	array.compact
end

def remove_nils_and_false_from_array(array)
	array.delete_if { |word| (word == nil) || (word == false) }
end

def reverse_every_element_in_array(array)
	array.map! { |word| word.reverse }
end

def every_possible_pairing_of_students(array)
	array.combination(2).to_a
end

def all_elements_except_first_3(array)
	array.drop(3)
end

def add_element_to_beginning_of_array(array, n)
	array.unshift(n)
end

def array_sort_by_last_letter_of_word(array)
	array.sort_by { |word| word[-1] }
end

# def get_first_half_of_string(string)
# 	string[0, string.length/2]
# end

def make_numbers_negative(number)
	number <= 0 ?	number : -number
end

def separate_array_into_even_and_odd_numbers(array)
	odd = array.select { |number| number.odd? }
	even = array.select { |number| number.even? }
	new = [even, odd]
end

def number_of_elements_that_are_palindromes(array)
	count = 0
  array.each { |word| word == word.reverse ? count += 1 : count += 0}
	count
end

def shortest_word_in_array (array)
	array.sort {|x, y| x.length <=> y.length}.first
end

def longest_word_in_array(array)
	array.sort { |x, y| y.length <=> x.length}.first
end

def total_of_array(numbers)
	numbers.reduce(:+)
end

def double_array(array)
	array + array
end

def turn_symbol_into_string(symbol)
	symbol.to_s
end

def average_of_array(array)
	(array.reduce(:+).to_f / array.length).round
end

def get_elements_until_greater_than_five(array)
	array.take_while { |number| number <= 5 }
end

def convert_array_to_a_hash(arr)
	arr.each_slice(2).map { |pair| Hash[*pair] }.reduce{|acc, el| acc.merge(el)  }
end