def pig_it text
  text.split.map { |w| w.gsub(/\w+/) { |x| "#{x[1..-1]}#{x[0]}ay" }}.join(' ')
end


# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !