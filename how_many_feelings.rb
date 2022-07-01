def count_feelings(string, arr)
  sum = arr.each_with_object([]) { |x, sum| all_include?(string, x) ? sum << x : sum }.count
  sum == 1 ?  "#{sum} feeling." : "#{sum} feelings."
end

def all_include?(str, word)
  word.chars.all? { |x| str.count(x) >= word.count(x)}
end

p count_feelings("yliausoenvjw", ["anger", "awe", "joy", "love", "grief"]) #, "3 feelings.")
p count_feelings("angerw", ["anger", "awe", "joy", "love", "grief"]) #, "2 feelings.")
p count_feelings("griefgriefgrief", ["anger", "awe", "joy", "love", "grief"]) #, "1 feeling.")
p count_feelings("abcdkasdfvkadf", ["desire", "joy", "shame", "longing", "fear"]) #, "0 feelings.")
p count_feelings("abcdkasdfvkadflongin", ["desire", "joy", "shame", "longing", "fear"]) #, "0 feelings.")


#   You have two arguments: string - a string of random letters(only lowercase) and array - 
#   an array of strings(feelings). Your task is to return how many specific feelings are in the array.

# For example:

# string -> 'yliausoenvjw'
# array -> ['anger', 'awe', 'joy', 'love', 'grief']
# output -> '3 feelings.' // 'awe', 'joy', 'love'


# string -> 'griefgriefgrief'
# array -> ['anger', 'awe', 'joy', 'love', 'grief']
# output -> '1 feeling.' // 'grief'
