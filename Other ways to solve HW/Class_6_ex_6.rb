#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` and `load` methods with your solutions from exercise 5.
#
# Write a program that, when given both a key and a value, updates the database
# by adding a new key-value pair:
#
#   $ ruby exercise6.rb friend 'Paul McCartney'
#   Updated 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :friend => "Paul McCartney"
#
# Or modifying an existing key-value pair:
#
#   $ ruby exercise6.rb name 'John Lennon'
#   Updated 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :name => "John Lennon"
#
# TIP: How do you merge two Hashes together?

require 'yaml'

def database
  File.absolute_path('../database.yml', __FILE__)
end

def load
  YAML.load_file(database)
end

def update(key, value)
  load[key.to_sym]
  # merge takes the new key value pair and overrides the orignal hash if
  # there was something there before, and if not it adds a new key value pair
  # to the end of the hash
  # merge always makes a new hash
  # the way I did it is that I made a mutation - and changed the orignal file

  # takes the old hash and assigns it to a new variable then update the new
  # hash and saves the new hash over the database
  File.write(database, load.to_sym)
end

input1, input2 = ARGV

abort 'Usage: exercise5.rb KEY VALUE' unless input1 && input2

update(input1, input2)

puts "Updated 1 key-value pair in #{database}"
puts ":#{input1} => #{input2.inspect}"
