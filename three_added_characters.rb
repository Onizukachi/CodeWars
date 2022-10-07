def added_char(s1, s2)
  s2 = s2.chars
  s1.chars.each do |l|
    s2.delete_at(s2.index(l)) if s2.include? l
  end

  s2.first
end



p added_char("hello","checlclo")  #,'c')
p added_char("aabbcc","aacccbbcc") #,'c')
p added_char("abcde","2db2a2ec")  #,'2')

p added_char("hello","aaahello")  #,'2')