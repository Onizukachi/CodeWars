def clean_string(string)
    string.chars.each_with_object([]) {|x, arr| x == '#' ? arr.pop : arr << x }.join
end




# Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

# Your task is to process a string with "#" symbols.

# Examples
# "abc#d##c"      ==>  "ac"
# "abc##d######"  ==>  ""
# "#######"       ==>  ""
# ""              ==>  ""