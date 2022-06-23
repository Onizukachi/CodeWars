def numeric_formatter(string, template = "1234567890")
  template = template.chars
  string.gsub(/[a-z]/i) { |x| template.rotate![-1] }
end

p numeric_formatter("xxx xxxxx xx","5465253289") #, "546 52532 89")
  p numeric_formatter("xxx xxxxx xx") #, "123 45678 90")
  p numeric_formatter("+555 aaaa bbbb", "18031978") #, "+555 1803 1978")
  p numeric_formatter("+555 aaaa bbbb") #, "+555 1234 5678")
  p numeric_formatter("xxxx yyyy zzzz") #, "1234 5678 9012")