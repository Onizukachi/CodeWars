def decrypt(key)
  count_letter = key.scan(/[a-z]/).each_with_object(Hash.new(0)) { |x, h| h[x] += 1}
  ('a'..'z').to_a.map! { |l|  count_letter[l]}.join
end


p decrypt('$aaaa#bbb*ccfff!z') #, '43200300000000000000000001')
 p decrypt('z$aaa#ccc%eee1234567890') #, '30303000000000000000000001')
p decrypt('the quick brown fox jumps over the lazy dog') #, '11113112111111411212211111')


# You'll be given a string of random characters (numbers, letters, and symbols). To decode this string into the key we're searching for:

# (1) count the number occurences of each ascii lowercase letter, and

# (2) return an ordered string, 26 places long, corresponding to the number of occurences for each corresponding letter in the alphabet.

# For example:

# '$aaaa#bbb*cc^fff!z' gives '43200300000000000000000001'
#    ^    ^   ^  ^  ^         ^^^  ^                   ^
#   [4]  [3] [2][3][1]        abc  f                   z
  
# 'z$aaa#ccc%eee1234567890' gives '30303000000000000000000001'
#  ^  ^   ^   ^                    ^ ^ ^                    ^
# [1][3] [3] [3]                   a c e                    z