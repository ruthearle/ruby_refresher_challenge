def select_elements_starting_with_a(array)

	array.select! { |word| word.start_with?("a")}

end