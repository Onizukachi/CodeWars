def average_string(s)
  num = %w[zero one two three four five six seven eight nine]
  return "n/a" if !(s.split.all?{ |s| num.include?(s) }) || s == ""
  num[(s.split.map { |x| num.find_index(x) }.reduce(:+) / s.split.size).to_i]
end


# You are given a string of numbers between 0-9. Find the average of these numbers and return it as a floored whole number (ie: no decimal places) written out as a string. Eg:

# "zero nine five two" -> "four"

# If the string is empty or includes a number greater than 9, return "n/a"