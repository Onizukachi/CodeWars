def string_parse string
  return "Please enter a valid string" if !(String === string)
  string.gsub(/(\w)\1{2,}/) { |x| "#{x.chars[0..1].join}[#{x.chars[2..-1].join}]" }
end

p string_parse("aaaabbcdefffffffg") #, "aa[aa]bbcdeff[fffff]g")
p string_parse("boopdedoop") #, "boopdedoop")
p string_parse("helloookat") #, "helloo[o]kat")
