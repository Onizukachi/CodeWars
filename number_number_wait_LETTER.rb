def do_math(s)
  numbers = s.split.map {|x| [x[/\D/], x.chars.reject{|l| l =~ /\D/}.join.to_i] }.sort_by { |ar| ar[0] }.map(&:last)
  sum = numbers.shift
  methods = ['+', '-', '*', "/"]

  methods.cycle do |op|
    break if numbers.empty?

    cur_num = numbers.shift 
    case op
    when '+' then sum += cur_num
    when '-' then sum -= cur_num
    when '*' then sum *= cur_num
    when "/" then sum /= cur_num.to_f
    end
  end

  sum.round
end

# Example : "24z6 1x23 y369 89a 900b" will become 89 900 123 369 246 (ordered according to the alphabet letter)

p do_math("24z6 1x23 y369 89a 900b") #,1299)
p do_math("10a 90x 14b 78u 45a 7b 34y") #,60)
p do_math("111a 222c 444y 777u 999a 888p") #,1459)
p do_math("1z 2t 3q 5x 6u 8a 7b") #,8)

# Examples :
# "24z6 1x23 y369 89a 900b" = 89 + 900 - 123 * 369 / 246 = 1299
# "24z6 1z23 y369 89z 900b" = 900 + 369 - 246 * 123 / 89 = 1414
# "10a 90x 14b 78u 45a 7b 34y" = 10 + 45 - 14 * 7 / 78 + 90 - 34 = 60