def number_format(n)
    return n.to_s if n.abs.to_s.size < 4
    n.to_s.gsub!(/(\d)(?=(\d\d\d)+(?!\d))/, '\\1,')
end


# Format any integer provided into a string with "," (commas) in the correct places.

# Example:

# number_format(100000); # return '100,000'
# number_format(5678545); # return '5,678,545'
# number_format(-420902); # return '-420,902'