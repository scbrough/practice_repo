def alphabetize(array, reverse = false)
  array.sort!
  if reverse
    array.reverse!
  else  
    return array
  end
end

numbers = [4, 6, 5, 8, 6, 7, 9, 87, 65, 67, 89, 2, 1]

print alphabetize(numbers, true)

