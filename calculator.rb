def add(numbers)
  return 0 if numbers.empty?
  if numbers.start_with?("//")
    delimiter, numbers = numbers[2..].split("\n")
    numbers = numbers.split(delimiter)
  else
    numbers = numbers.split(/,|\n/)
  end

  numbers = numbers.map(&:to_i)
  negatives = numbers.select { |n| n < 0 }

  raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

  numbers.sum
end