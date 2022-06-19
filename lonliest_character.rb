def loneliest(s)
  ar = s.strip.scan(/(\w)(?=\s)|(?<=\s)(\w)/).map(&:compact).flatten

  result = ar.each_with_object(Hash.new) do |l, h|
    h[l] = s.strip.scan(/(\s+#{l}\s+)|(#{l}\s+)|(\s+#{l})/).map(&:compact).flatten.join.chars.count(' ')
  end

  final = result.group_by { |_k, v| v}.max_by { |k, _v| k}
  return s.strip.chars unless final

  final[1].map(&:first)

  s.strip.scan(/(?=(\s*[a-z]\s*))/)
end


p loneliest("a")#.sort#, ["a"])
p loneliest("abc d   ef  g   h i j      ")#.sort #, ["g"])
p loneliest("a   b   c ")#.sort #, ["b"])
p loneliest("  abc  d  z    f gk s ")#.sort #, ["z"])
p loneliest("a  b  c  de  ")#.sort #, ["b", "c"])
p loneliest("abc")#.sort #, ["a", "b", "c"])


# DESCRIPTION:
# Complete the function which accepts a string and return an array of character(s) that have the most spaces to their right and left.

# Notes:

# the string can have leading/trailing spaces - you should not count them
# the strings contain only unique characters from a to z
# the order of characters in the returned array doesn"t matter