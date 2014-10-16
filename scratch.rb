# The secret of getting ahead is getting started.
# - Mark Twain


array = ['Can I Kick it?','A Tribe Called Quest','1991','Rump Shaker',\
         'Wreckx-n-Effect','1992','Check Yo Self','Ice Cube','1993',\
         'Regulate','Warren G & Nate Dogg','1994','I got 5 On It','Luniz',\
         '1995','Ready Or Not','The Fugeed','1996']


i = 0
width = 50

while i < array.size
puts array[i].ljust(width/2) + array[i + 1].center(width) + array[i + 2].rjust(width/2)

i += 3
end
