def count_repeats(txt)
  file = txt.chars.chunk_while { |x, y| x == y }.to_a.reject { |x| x.size < 2}
  return 0 if file.empty?
  file.map(&:size).map { |x| x - 1}.inject(:+)
end

p count_repeats('abbbc')  #,1)
p count_repeats('abbcca')  #,2)
p count_repeats('>=6>;')  #,1)
p count_repeats(">:@:84<?5>84B@B7B:574CCA58;44;A26>E892;>>CDD>:8;4A<76C57A")  #4

# DESCRIPTION:
# Write a function that returns the count of characters that have to be removed in order to get a string with no consecutive repeats.

# Note: This includes any characters

# Examples
# 'abbbbc'  => 'abc'    #  answer: 3
# 'abbcca'  => 'abca'   #  answer: 2
# 'ab cca'  => 'ab ca'  #  answer: 1

#another solution

# txt.scan(/(.)(?=\1)/).size

# txt.chars.each_cons(2).count { |a, b| a == b }