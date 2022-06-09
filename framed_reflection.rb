def mirror(text)
  size = text.split.max_by(&:length).size + 4
  rest = text.split.map{ |x| x.reverse.ljust(size - 1, ' ').gsub(/(\s\s)$/, '*').insert(0, '* ') + "\n"}
  ramki = ('*' * size)
  [ramki + "\n", rest, ramki].flatten.join
end


p mirror("Hello World")  #).to eq("*********\n* olleH *\n* dlroW *\n*********");
p mirror("Codewars")#).to eq("************\n* srawedoC *\n************");
p mirror("emosewA !ataK")#).to eq("***********\n* Awesome *\n* Kata!   *\n***********");

# You are given a message (text) that you choose to read in a mirror (weirdo). Return what you would see, complete with the mirror frame. Example:
# 'Hello World'
# would give:
# Words in your solution should be left-aligned.
