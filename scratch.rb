# The secret of getting ahead is getting started.
# - Mark Twain


bottles = 3
word = 'bottles'

loop do
  puts "#{bottles} #{word} of beer on the wall, #{bottles} #{word} of beer!"

  bottles -= 1

  bottles = 'no more' if bottles == 0

  if bottles == 1
    word = 'bottle'
  else
    word = 'bottles'
  end

  puts "Take one down, pass it around, #{bottles} #{word} of beer on the wall
  1"

  break if bottles == 'no more'
end

puts 'No more bottles of beer on the wall, no more bottles of beer'
puts 'Go to the store and buy some more, 3 bottles of beer on the wall'
