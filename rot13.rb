def rot13(message)
  init = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  transfer = 'nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM'

  hash = ((init.chars).zip(transfer.chars)).to_h
  #message.gsub(/[a-z]/i) { |x| hash[x]}
  message.gsub(/[a-z]/i) { |x| x.tr(init, transfer)}
end

p rot13("EBG13 rknzcyr.")# == "ROT13 example.")
#p rot13("Guvf vf zl svefg EBG13 rkprepvfr!")  # "This is my first ROT13 excercise!"
