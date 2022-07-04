def insert_missing_letters(st)
  alp = ('a'..'z').to_a
  size = alp.size
  uniq_letters = []

  st.chars.map do |l|
    next l if uniq_letters.include? l
    uniq_letters << l
    last = alp[(alp.index(l)+1)..size]
    result = last.map { |s| st.include?(s) ? nil : s.upcase }.compact.join
    l + result
  end.join
end

p insert_missing_letters('holly') #"hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"
p insert_missing_letters("hello") #,"hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ")​

# input: "holly"

# missing letters: "a,b,c,d,e,f,g,i,j,k,m,n,p,q,r,s,t,u,v,w,x,z"

# output: "hIJKMNPQRSTUVWXZoPQRSTUVWXZlMNPQRSTUVWXZlyZ"

# In this Kata you have to create a function,named insertMissingLetters,that takes in a 
# string and outputs the same string processed in a particular way.

# The function should insert only after the first occurrence of each character of the input string, all the alphabet letters that:

# -are NOT in the original string
# -come after the letter of the string you are processing

# Each added letter should be in uppercase, the letters of the original string will always be in lowercase.