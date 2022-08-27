def cat_mouse(x,j)
    c = x.index('C')
   d = x.index('D')
   m = x.index('m')
   
     if c.nil? || d.nil? || m.nil?
       return "boring without all three"
     elsif (c - m).abs - 1 > j 
       return "Escaped!"
       elsif ([c, m].min..[c, m].max).include?(d)
         return "Protected!"
       else
         "Caught!"
     end
end


# You will be given a string (x) featuring a cat 'C', a dog 'D' and a mouse 'm'. The rest of the string will be made up of '.'.

# You need to find out if the cat can catch the mouse from it's current position. The cat can jump (j) characters.

# Also, the cat cannot jump over the dog.

# So:

# if j = 5:

# ..C.....m. returns 'Caught!' <-- not more than j characters between

# .....C............m...... returns 'Escaped!' <-- as there are more than j characters between the two, the cat can't jump far enough

# if j = 10:

# ...m.........C...D returns 'Caught!' <--Cat can jump far enough and jump is not over dog

# ...m....D....C....... returns 'Protected!' <-- Cat can jump far enough, but dog is in the way, protecting the mouse

# Finally, if all three animals are not present, return 'boring without all three'