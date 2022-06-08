def bowlingPins(arr)
  hash = {
    1 => "   I   ",
    2 => "  I ",
    3 => "I  ",
    4 => " I ",
    5 => "I ",
    6 => "I ",
    7 => "I ",
    8 => "I ",
    9 => "I ",
    10 => "I"
  }

  arr.each { |x| hash[x].gsub!(/I/, ' ')}
  hash[7] + hash[8] + hash[9] + hash[10] + "\n" + hash[4] + hash[5] + hash[6] + "\n" + hash[2] + hash[3] + "\n" + hash[1]
end


p bowlingPins([2,3])   #, "I I I I\n I I I \n       \n   I   ")
p bowlingPins([1,2,10])  #, "I I I  \n I I I \n    I  \n       ")