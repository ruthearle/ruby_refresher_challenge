def select_elements_starting_with_a(array)

	array.select! { |word| word.start_with?("a")}

end

def select_elements_starting_with_vowel(array)
	array.select! { |word| word.start_with?('a', 'e', 'i', 'o', 'u')}
end

def remove_nils_from_array(noughts)

end