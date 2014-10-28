def old_school_roman_numeral(num)
  arabics_to_romans = [
    [1000, 'M'],
    [900, 'CM'],
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [90, 'XC'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I']
]

answer = []

arabics_to_romans.each do |arabic_to_roman|
  arabic, roman = arabic_to_roman

  quotient = num / arabic
  next if quotient == 0

answer.push(roman * quotient)
num %= arabic

# the same as num = num % arabic
  end

answer.join
# joins all the array values together, which is automatically sent to the output
# because we puts the method at the bottom of this code
end

input = ARGV[0].to_i

abort 'Usage: exercise4.rb [1-1000]' unless input.between?(1, 1000)

puts old_school_roman_numeral(input)


