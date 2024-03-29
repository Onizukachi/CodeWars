def csv_columns(csv, indices)
  csv.split("\n").map { |cl| cl.split(',').select.with_index { |_x, i| indices.include?(i) } }
end


# p csv_columns( "1,2\n3,4\n5,6", [5, 6, 7] ) #, "")
# p csv_columns( "1,2,3\n4,5,6" , [0, 1] ) #, "1,2\n4,5")
# p csv_columns( "a,b,c,d,e\n1,2,3,4,5\nf,g,h,i,j" , [1, 3, 5, 7] ) #, "b,d\n2,4\ng,i")
# p csv_columns( "1\n2\n3\n4\n5" , [0, 1] )# , "1\n2\n3\n4\n5")
# p csv_columns( "1\n2\n3\n4\n5" , [1] ) #, "")

p csv_columns( "1,1,7,1,1,4,0,6,2\n1,9,1,8,4,8,1,9,5" , [2, 15, 7, 5, 18]) #, "")  "7,4,6\n1,8,9"