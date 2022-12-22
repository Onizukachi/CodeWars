def jumbled_string(s, n)
  str = s.dup
  n.times {str = str.chars.partition.with_index { |el,i| i.even? }.join }
  str
end

p jumbled_string("Such Wow!", 1)      #, "Sc o!uhWw"
p jumbled_string("better example", 2) #, "bexltept merae"
p jumbled_string("qwertyuio", 2)      #, "qtorieuwy"
p jumbled_string("Greetings", 8)      #, "Gtsegenri"