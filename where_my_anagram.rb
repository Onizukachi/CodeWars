def anagrams(word, words)
    words.map { |w| word.anagram?(w) ? w : nil}.compact
end

class String
  def anagram?(other_word)
    self.chars.sort.join == other_word.chars.sort.join
  end
end

# other solution words.select { |w| w.chars.sort == word.chars.sort }

# Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. 
# You should return an array of all the anagrams or an empty array if there are none. For example:

# p anagrams("a", ["b", "c", "d", "a"])  #["a"]

# p anagrams("ab", ["aa", "bb", "cc", "ac", "bc", "cd", "ab", "ba"]) #v["ab", "ba"]

# p anagrams("abba", ["abcd", "abbba", "baaab", "abbab", "abbaa", "babaa", "aabb", "bbaa", "abab", "baba", "baab"]) 
#                                           #["aabb", "bbaa", "abab", "baba", "baab"]

# p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])# => ['aabb', 'bbaa']

# p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer'])# => ['carer', 'racer']

# p anagrams('laser', ['lazing', 'lazy',  'lacer'])# => []



