def is_prime?(number)
  return false if number <= 1

  (2..number-1).reverse_each do |divisor|
    return false if number % divisor == 0
  end

  true
end

