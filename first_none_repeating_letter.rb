require 'set'

def  first_non_repeating_letter(s) 
  return '' if s.empty?
  result = s.chars.each_with_object(Hash.new(0)) {|x, h|  h[x.downcase]  += 1 }.min_by { |_k,v| v}
  return '' if result.nil? || result[1] > 1
  s.chars[s =~ /#{result.first}/i]
end


p first_non_repeating_letter('a') #, 'a')
p first_non_repeating_letter('stress') #, 't')
p first_non_repeating_letter('moonmen') #, 'e')

p first_non_repeating_letter('') #, '')

# For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, 
# and occurs first in the string.

# As an added challenge, upper- and lowercase letters are considered the same character, 
# but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.