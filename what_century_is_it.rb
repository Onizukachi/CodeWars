def what_century(year)
    int = year.to_i
    cen = year[0..1]
    cen = (year[0..1].to_i + 1).to_s if int % 100 != 0
    
    num = cen[1].to_i
    return cen + "th" if cen[0].to_i == 1
    return cen + "st" if num == 1
    return cen + "nd" if num == 2
    return cen + "rd" if num == 3
    return cen + "th"    
end


# Return the century of the input year. The input will always be a 4 digit string, so there is no need for validation.

# Examples
# "1999" --> "20th"
# "2011" --> "21st"
# "2154" --> "22nd"
# "2259" --> "23rd"
# "1124" --> "12th"
# "2000" --> "20th"