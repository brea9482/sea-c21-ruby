# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

original = 3
left = 3

while left >= 0
  if left > 2
    puts "#{left} bottles of beer on the wall, #{left} bottles of beer!"
    puts "Take one down, pass it around, #{left - 1} bottles of beer on the " \
    'wall!'
    left -= 1
  elsif left == 2
    puts "#{left} bottles of beer on the wall, #{left} bottles of beer!"
    puts "Take one down, pass it around, #{left - 1} bottle of beer on the " \
    'wall!'
    left -= 1
  elsif left == 1
    puts "#{left} bottle of beer on the wall, #{left} bottle of beer!"
    puts 'Take one down, pass it around, no more bottles of beer on the wall!'
    left -= 1
  elsif left == 0
    puts 'No more bottles of beer on the wall, no more bottles of beer!'
    puts "Go to the store and buy some more, #{original} bottles of beer on " \
    'the wall!'
    left -= 1
  end
end
