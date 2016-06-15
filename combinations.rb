def combinations(array1, array2)
  combined_array = []

  array1.each do |array1_string|
    array2.each do |array2_string|
      combined_string = array1_string + array2_string
      combined_array << combined_string
    end
  end

  combined_array
end
