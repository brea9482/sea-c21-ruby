#!/usr/bin/env ruby
#
# 5 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction 'IX' nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written 'VIIII' and so on.
#
# Write a method that, when passed any integer between 1 and 1000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   $ ruby exercise4.rb 9
#   VIIII
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    500 = D
#    100 = C
#     50 = L
#     10 = X
#      5 = V
#      1 = I
#
# TIP #2: Use the integer division and modulus methods on page 32.
#
# TIP #3: You only need to change the `old_school_roman_numeral` method.

# rubocop:disable MethodLength


def old_school_roman_numeral(num)

m = 0
d = 0
c = 0
l = 0
x = 0
v = 0
i = 0

  if num == 1000
    m = num/1000
    num = num % 1000
  end
  if num >= 500
    d = num/500
    num = num % 500
  end
  if num >= 100
    c = num/100
    num = num % 100
  end
  if num >= 50
    l = num/50
    num = num % 50
  end
  if num >= 10
    x = num/10
    num = num % 10
  end
  if num >= 5
    v = num/5
    num = num % 5
  end
  if num >= 1
    i = num/1
  end


print 'M'*m + 'D'*d + 'C'*c + 'L'*l + 'X'*x + 'V'*v + 'I'*i

end

input = ARGV[0].to_i

abort 'Usage: exercise4.rb [1-1000]' unless input.between?(1, 1000)

puts old_school_roman_numeral(input)
