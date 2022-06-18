def to_underscore(string)
  string.to_s.gsub(/[A-Z]/) { |x| "_#{x.downcase}" }.delete_prefix('_')
end

p to_underscore("TestController") #s, "test_controller")
p to_underscore("MoviesAndBooks") #, "movies_and_books")
p to_underscore("App7Test") #, "app7_test")
p to_underscore(1) #, "1")


# Complete the function/method so that it takes a PascalCase string and returns the string in snake_case notation. 
# Lowercase characters can be numbers. 
# If the method gets a number as input, it should return a string.

