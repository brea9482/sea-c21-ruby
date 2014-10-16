#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that displays the following table of 90's Hip-Hop hits:
#
#   $ ruby exercise2.rb
#   Can I Kick It?      A Tribe Called Quest     1991
#   Rump Shaker         Wreckx-n-Effect          1992
#   Check Yo Self       Ice Cube                 1993
#   Regulate            Warren G & Nate Dogg     1994
#   I Got 5 On It       Luniz                    1995
#   Ready Or Not        The Fugees               1996
#
# TIP #1: Hold all of the information -- song, artist, and year -- in an array.
#
# TIP #2: Use the `string.ljust` method from class 2 exercise 7.
#
# TIP #3: The width of each line is 50 characters.

array = ['Can I Kick It?','A Tribe Called Quest','1991','Rump Shaker',\
         'Wreckx-n-Effect','1992','Check Yo Self','Ice Cube','1993',\
         'Regulate','Warren G & Nate Dogg','1994','I Got 5 On It','Luniz',\
         '1995','Ready Or Not','The Fugees','1996']


i = 0

while i < array.size
puts array[i].ljust(20) + array[i + 1].ljust(20) + array[i + 2].rjust(10)
i += 3
end
