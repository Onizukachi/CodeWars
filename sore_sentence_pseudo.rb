def sort sentence
  sentence.scan(/\w+/).partition { |x| !(/[[:upper:]]/.match(x)) }.map.with_index { |s, i| i.zero? ? s.sort.join(' ') : s.sort.reverse.join(' ')}.reject(&:empty?).join(' ')
end

p sort("I, habitan of the Alleghanies, treating of him as he is in himself in his own rights")#, "as habitan he him himself his in in is of of own rights the treating I Alleghanies")
p sort("Land of the Old Thirteen! Massachusetts land! land of Vermont and Connecticut!")#, "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut")
p sort("take up the task eternal, and the burden and the lesson")#, "and and burden eternal lesson take task the the the up")
p sort("Pioneers, O Pioneers!")#, "Pioneers Pioneers O")