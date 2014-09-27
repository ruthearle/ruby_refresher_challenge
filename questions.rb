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