
def words_to_object(s)
  hash_str = s.split.each_slice(2).map{|n,i| "{name : '#{n}', id : '#{i}'}"}.join(', ')
  '[' + hash_str + ']'
end


p words_to_object("red 1 yellow 2 black 3 white 4") #, "[{name : 'red', id : '1'}, {name : 'yellow', id : '2'}, {name : 'black', id : '3'}, {name : 'white', id : '4'}]")
p words_to_object("1 red 2 white 3 violet 4 green") #, "[{name : '1', id : 'red'}, {name : '2', id : 'white'}, {name : '3', id : 'violet'}, {name : '4', id : 'green'}]")
p words_to_object("1 1 2 2 3 3 4 4")#, "[{name : '1', id : '1'}, {name : '2', id : '2'}, {name : '3', id : '3'}, {name : '4', id : '4'}]")
p words_to_object("#@&fhds 123F3f 2vn2# 2%y6D @%fd3 @!#4fs W@R^g WE56h%")#, "[{name : '#@&fhds', id : '123F3f'}, {name : '2vn2#', id : '2%y6D'}, {name : '@%fd3', id : '@!#4fs'}, {name : 'W@R^g', id : 'WE56h%'}]")
p words_to_object("")#, "[]")

# You're given a string containing a sequence of words separated with whitespaces. Let's say it is a sequence of patterns: a name and a corresponding number - like this:

# "red 1 yellow 2 black 3 white 4"

# You want to turn it into a different string of objects you plan to work with later on - like this:

# "[{name : 'red', id : '1'}, {name : 'yellow', id : '2'}, {name : 'black', id : '3'}, {name : 'white', id : '4'}]"

# Doing this manually is a pain. So you've decided to write a short function that would make the computer do the job for you. Keep in mind, the pattern isn't necessarily a word and a number. 
# Consider anything separeted by a whitespace, just don't forget: an array of objects with two elements: name and id.