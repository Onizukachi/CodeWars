def bears(x,s)
  str = s.scan(/(8B)|(B8)/).map(&:compact)
  [str.join, str.size >= x]
end

p bears(7, '8j8mBliB8gimjB8B8jlB')         #).to eq(["B8B8B8",false])
p bears(3, '88Bifk8hB8BB8BBBB888chl8BhBfd')#).to eq(["8BB8B8B88B",true])
p bears(8, '8')                           #).to eq(["",false])
p bears(1, 'j8BmB88B88gkBBlf8hg8888lbe88') #).to eq(["8BB88B",true])
p bears(1, 'BBj88Bfj8B8B8Bj8BB8BaBB8B')                      #).to eq(["",true])



# Task:
# You must check within a string (s) to find all of the mating pairs, returning a list/array of the string containing valid mating pairs and a boolean indicating whether the total number of bears is greater than or equal to x.

# Rules for a 'valid' mating pair:
# Bears are either 'B' (male) or '8' (female),
# Bears must be together in male/female pairs 'B8' or '8B',
# Mating pairs must involve two distinct bears each ('B8B' may look fun, but does not count as two pairs).
# Return an array containing a string of the valid mating pairs available (empty string if there are no pairs), and a boolean indicating whether the total number of bears is greater than or equal to x. , e.g:

# (6, 'EvHB8KN8ik8BiyxfeyKBmiCMj') ---> ['B88B', false]; in this example, the number of bears(=4) is lesser than the given value of x(=6)