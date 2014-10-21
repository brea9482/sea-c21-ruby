#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength
def modern_roman_numeral(num)
  m = 0
  cm = 0
  d = 0
  cd = 0
  c = 0
  xc = 0
  l = 0
  xl = 0
  x = 0
  ix = 0
  v = 0
  iv = 0
  i = 0

  if num == 1000
    m = num / 1000
    num = num % 1000
  end
  if num >= 900
    cm = num / 900
    num = num % 900
  end
  if num >= 500
    d = num / 500
    num = num % 500
  end
  if num >= 400
    cd = num / 400
    num = num % 400
  end
  if num >= 100
    c = num / 100
    num = num % 100
  end
  if num >= 90
    xc = num / 90
    num = num % 90
  end
  if num >= 50
    l = num / 50
    num = num % 50
  end
    if num >= 40
    xl = num / 40
    num = num % 40
  end
  if num >= 10
    x = num / 10
    num = num % 10
  end
  if num >= 9
    ix = num / 9
    num = num % 9
  end
  if num >= 5
    v = num / 5
    num = num % 5
  end
  if num >= 4
    iv = num / 4
    num = num % 4
  end
  if num >= 1
    i = num / 1
  end
  print 'M' * m + 'CM' * cm + 'D' * d + 'CD' * cd + 'C' * c + 'XC' * xc +
  'L' * l + 'XL' * xl + 'X' * x + 'IX' * ix + 'V' * v + 'IV' * iv + 'I' * i
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
