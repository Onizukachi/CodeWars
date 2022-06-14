def scramble(s1,s2)
  #s2.chars.map { |x| s1.slice!(x) }.compact.size == s2.size   # First solution
  ('a'..'z').all? { |x| s1.count(x) >= s2.count(x) }  
end




p scramble('rkqodlw','world')#,true)
p scramble('cedewaraaossoqqyt','codewars')#,true)
p scramble('katas','steak')#,false)
p scramble('scriptjava','javascript')##,true)
p scramble('scriptingjava','javascript')  #,true)

# Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, 
# otherwise returns false.

# Notes:

# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered.

