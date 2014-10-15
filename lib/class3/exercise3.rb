# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
answer = gets.chomp
count = 0

loop do
  if answer =='BYE'
  puts "Nana: HOW'S SCHOOL GOING?"
  answer = gets.chomp
  count += 1
  end

  if answer == answer.downcase
  puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
  answer = gets.chomp
  count = 0
  end

  if answer == answer.upcase && answer != 'BYE'
  year = rand(21) + 1930
  puts "Nana: NOT SINCE #{year}!"
  answer = gets.chomp
  count = 0
  end

  break if answer =='BYE' && count == 2
end

puts 'Nana: BYE SWEETIE!'
