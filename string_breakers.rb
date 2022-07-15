def string_breakers(n, st)
  st.tr(' ', '').chars.each_slice(n).map(&:join).join("\n")
end

# I will give you an integer (N) and a string. Break the string up into as many substrings of N as you can without spaces. If there are leftover characters, include those as well.

# Example: 

# n = 5;

# st = "This is an example string";

# return value:
# Thisi
# sanex
# ample
# strin
# g

# return value as a string: "Thisi"+"\n"+"sanex"+"\n"+"ample"+"\n"+"strin"+"\n"+"g"