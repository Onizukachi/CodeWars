# def has_subpattern(string)
#   str = ''
#   string.chars.each do |x| 
#     str += x
#     return true if string.gsub(/^(#{str}){2,}$/, '') == '' 
#   end
#   false
# end

string.match?(/^(\w+)\1+$/)

p has_subpattern("wKqAWg5NZJLdVnUbKwJwsvWTYmnOyx0dTMgoK7l8FKUIbf0kWeIkJrmbrhsH88eetuDklHamVmiS")#, false)
p has_subpattern("aaaa")#, true)
p has_subpattern("abcd")#, false)
p has_subpattern("abababab")#, true)
p has_subpattern("ababababa")#, false)
p has_subpattern("123a123a123a")#, true)
p has_subpattern("123A123a123a")#, false)
p has_subpattern("abbaabbaabba") #, true)
p has_subpattern("abbabbabba") #, false)

#In this kata you need to build a function to return either true/True or false/False
# if a string can be seen as the repetition of a simpler/shorter subpattern or not.

