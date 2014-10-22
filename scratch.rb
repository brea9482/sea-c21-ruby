# an example of an array of arrays

array = [
  ['Can I Kick It?', 'A Tribe Called Quest', '1991'],
  ['Rump Shaker','Wreckx-n-Effect', '1992'],
  ['Check Yo Self', 'Ice Cube', '1993'],
  ['Regulate', 'Warren G & Nate Dogg', '1994'],
  ['I Got 5 On It', 'Luniz','1995'],
  ['Ready Or Not', 'The Fugees', '1996']
]


hits.each do |hit|
  song, artist, year = hit

  puts song.ljust(20) + artist.ljust(26) + year.ljust(4)
end


# another way to do It

song = hit[0]
artis = hit [1]
year = hit [2]
