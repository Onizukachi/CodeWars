def count_adjacent_pairs(s) 
  s.split(' ').chunk_while { |f, l| f.chars.map(&:downcase).join == l.chars.map(&:downcase).join}.to_a.count { |x| x.size > 1}
end

p count_adjacent_pairs('') #, 0)
p count_adjacent_pairs('orange Orange kiwi pineapple apple') #, 1)
p count_adjacent_pairs('banana banana banana') #, 1)
p count_adjacent_pairs('banana banana banana terracotta banana terracotta terracotta pie!') #, 2)
p count_adjacent_pairs('pineapple apple') #, 0)
p count_adjacent_pairs('FLOat flOat ord Ord') #, 2)

#You know how sometimes you write the the same word twice in a sentence, but then don't notice that it happened? 
# For example, you've been distracted for a second. Did you notice that "the" is doubled in the first sentence of this description?

# As as aS you can see, it's not easy to spot those errors, especially if words differ in case, like "as" at the beginning of this sentence.

# Write a function that counts the number of sections repeating the same word (case insensitive). 
# The occurence of two or more equal words next after each other counts as one.