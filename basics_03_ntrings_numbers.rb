def calculate_string st
  #eval(st.gsub(/[^\d\/\+\-\*\.]/, '')).round.to_s    # первое решене
  arr = st.gsub(/[^\d\/\+\-\*\.]/, '').split(/(?=[\/\+\-\*])|(?<=[\/\+\-\*])/)
  arr.first.to_i.send(arr[1], arr.last.to_i)       
end

p calculate_string(";$%§fsdfsd235??df/sdfgf5gh.000kk0000") #, "47")
p calculate_string("sdfsd23454sdf*2342") #, "54929268")
p calculate_string("fsdfsd235???34.4554s4234df-sdfgf2g3h4j442") #, "-210908")
p calculate_string("fsdfsd234.4554s4234df+sf234442") #, "234676")
p calculate_string("a1a2b3c.c0c/a1a0b.cc00c")  #, '12')


# Here you have to do some mathematical operations on a "dirty string". This kata checks some basics, it's not too difficult.

# So what to do?

# Input: String which consists of two positive numbers (doubles) and exactly one operator like +, -, * or / always between these numbers. 
# The string is dirty, which means that there are different characters inside too, not only numbers and the operator. 
# You have to combine all digits left and right, perhaps with "." 
# inside (doubles), and to calculate the result which has to be rounded to an integer and converted to a string at the end.