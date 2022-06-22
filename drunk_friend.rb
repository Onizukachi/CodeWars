def decode(string)
  return "Input is not a string" unless string.is_a? String
  alp = [*('a'..'z'), *('A'..'Z')].join
  reverse_alp = [*('a'..'z')].join.reverse + [*('A'..'Z')].join.reverse

  string.tr(alp, reverse_alp)
end


p decode("yvvi") #, "beer")
p decode("Blf zoivzwb szw 10 yvvih") #, "You already had 10 beers")
p decode("Ovg'h hdrn rm gsv ulfmgzrm!") #, "Let's swim in the fountain!")
p decode("Tl slnv, blf'iv wifmp") #, "Go home, you're drunk") 

# You're hanging out with your friends in a bar, when suddenly one of them is so drunk, that he can't speak, 
# and when he wants to say something, he writes it down on a paper. However, none of the words he writes make sense to you. 
# He wants to help you, so he points at a beer and writes "yvvi".
#  You start to understand what he's trying to say, and you write a script, that decodes his words.

# Keep in mind that numbers, as well as other characters, can be part of the input, and you should keep them like they are. 
# You should also test if the input is a string. If it is not, return "Input is not a string".