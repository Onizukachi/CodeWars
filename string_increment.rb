def increment_string(input)
  input =~ /\d+$/ ? input.gsub(/(\d+)\z/i) { $1.next } : input.concat('1')
end

p increment_string("foo")#, "foo1")
p increment_string("foobar001")#, "foobar002")
p increment_string("foobar1")#, "foobar2")
p increment_string("foobar00")#, "foobar01")
p increment_string("foobar99")#, "foobar100")
p increment_string("")#, "1")
p increment_string("")#, "1")
p increment_string("f00b4r0")#, ""f00b4r1"")
p increment_string("f00bar0")#, ""f00b4r1"")

# return input.concat('1') if input.empty? || input.match?(/^[a-z]+\z/i) 
# #input.gsub(/([a-z]+)(\d+)\z/i) { puts "#{$1}#{$2.next}"}
# if input =~ /\d+$/
#   digit = input.scan(/\d+$/).first.next
#   return input.reverse.sub(/^[0-9]+/, "#{digit.reverse}").reverse
# else
#   return input.concat('1')
# end