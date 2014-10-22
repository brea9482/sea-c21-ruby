def old_school_roman_numeral(num)
  arabics_to_romans = [
    [1000,'M']
    [500,'D']
    [100,'C']
    [50,'L']
    [10,'X']
    [5,'V']
    [1,'I']
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
