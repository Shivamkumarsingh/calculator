def add(numbers)
  return 0 if numbers.empty?
  if numbers.start_with?("//")
    delimiter, numbers = numbers[2..].split("\n")
    numbers.split(delimiter).sum(&:to_i)
  else
    numbers.split(/,|\n/).sum(&:to_i)
  end
end
