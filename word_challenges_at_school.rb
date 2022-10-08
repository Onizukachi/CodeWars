require 'pry'

def format_(text, size)
  temp_str = ""

  str = text.split.each_with_object("") do |el, result|
    if check_end?((temp_str + el), size)
      result << (temp_str.delete_suffix(" ") + "\n")
      temp_str = (el += " ")
    else
      temp_str += (el += " ")
      result << ""
    end
  end

  str += temp_str.delete_suffix(' ')
end

def check_end?(str, size)
  str.size > size ? true : false
end


# text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec consectet" +
#   "ur risus. Cras vel urna a tellus dapibus consequat. Duis bibendum tincidunt viverra. Ph" +
#   "asellus dictum efficitur sem quis porttitor. Mauris luctus auctor diam id ultrices. Pra" +
#   "esent laoreet in enim ut placerat. Praesent a facilisis turpis."

# p format_(text, 30) #==
#   "Lorem ipsum dolor sit amet,"    + "\n" +
#   "consectetur adipiscing elit."   + "\n" +
#   "Aliquam nec consectetur risus." + "\n" +
#   "Cras vel urna a tellus dapibus" + "\n" +
#   "consequat. Duis bibendum"       + "\n" +
#   "tincidunt viverra. Phasellus"   + "\n" +
#   "dictum efficitur sem quis"      + "\n" +
#   "porttitor. Mauris luctus"       + "\n" +
#   "auctor diam id ultrices."       + "\n" +
#   "Praesent laoreet in enim ut"    + "\n" +
#   "placerat. Praesent a facilisis" + "\n" +
#   "turpis."

# p format_(text, 50) #==
#   "Lorem ipsum dolor sit amet, consectetur adipiscing" + "\n" +
#   "elit. Aliquam nec consectetur risus. Cras vel urna" + "\n" +
#   "a tellus dapibus consequat. Duis bibendum"          + "\n" +
#   "tincidunt viverra. Phasellus dictum efficitur sem"  + "\n" +
#   "quis porttitor. Mauris luctus auctor diam id"       + "\n" +
#   "ultrices. Praesent laoreet in enim ut placerat."    + "\n" +
#   "Praesent a facilisis turpis."