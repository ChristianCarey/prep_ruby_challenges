def uniques(array)
  unique_array = []

  array.each do |item|
    unique_array << item unless unique_array.include?(item)
  end

  unique_array
end
