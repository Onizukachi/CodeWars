def frame(text, char)
  size = text.max_by{|x| x.size}.size + 4
  (text.each_with_object([(char * size)]) { |word, str| str << "#{char} #{word.ljust(size - 4)} #{char}" } << (char * size)).join("\n")

end

p frame(['Create', 'a', 'frame'], '+')
# ++++++++++
# + Create +
# + a      +
# + frame  +
# ++++++++++

p frame(['Small', 'frame'], '~') # "~~~~~~~~~\n~ Small ~\n~ frame ~\n~~~~~~~~~"

p frame(['Create','this','kata'],'+')  # "++++++++++\n+ Create +\n+ this   +\n+ kata   +\n++++++++++"

p frame(['This is a very long single frame'], '-') 
# "------------------------------------\n- This is a very long single frame -\n------------------------------------"


# Given an array of strings and a character to be used as border, output the frame with the content inside.

# Notes:

# Always keep a space between the input string and the left and right borders.
# The biggest string inside the array should always fit in the frame.
# The input array is never empty.