require 'set'
# Я злой мамонт

# def remember(str)
#   arr = []
#   str.chars.each_with_object(Hash.new(0)) { |x, h| h[x] += 1; arr << x if h[x] == 2 }
#   return arr
# end

def remember(str)
  str.chars.reduce([[], Set.new]) do |(arr, set), x|
    arr << x if set.include?(x) && !arr.include?(x)
    set << x
    [arr, set]
  end.first
end

p remember('apple') #, ["p"])
p remember("apPle") #, [])
p remember("pippi") #, ["p", "i"])
p remember('Pippi') #, ["p", "i"])                                            {"i"=>2, "p"=>2}
p remember("limbojackassin the garden") #, ["a", "s", "i", " ", "e", "n"])
p remember("11pinguin") #, ["1", "i", "n"])