def power(base, exponent)
  return 1 if exponent == 0

  total = base

  (exponent-1).times do 
    total *= base
  end
  
  total
end


