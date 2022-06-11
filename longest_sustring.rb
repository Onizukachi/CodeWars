def longest(s)
  s.scan(Regexp.new(('a'..'z').to_a.map{|x| x + '*'}.join)).max_by(&:size)
end

# Test.assert_equals(longest('asd'), 'as')
# Test.assert_equals(longest('nab'), 'ab')
# Test.assert_equals(longest('abcdeapbcdef'), 'abcde')
# Test.assert_equals(longest('asdfaaaabbbbcttavvfffffdf'), 'aaaabbbbctt')
# Test.assert_equals(longest('asdfbyfgiklag'), 'fgikl')
# Test.assert_equals(longest('z'), 'z')
# Test.assert_equals(longest('zyba'), 'z')

#Find the longest substring in alphabetical order.

# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

# There are tests with strings up to 10 000 characters long so your code will need to be efficient.

# The input will only consist of lowercase characters and will be at least one letter long.

# If there are multiple solutions, return the one that appears first.

# Good luck :)