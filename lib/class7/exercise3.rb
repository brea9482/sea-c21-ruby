#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and extend it with the following method:
#
#   OrangeTree#pick!(amount = 1) #=> Integer or nil
#
#     Returns nil if @fruit is less than the `amount` to pick.
#     Otherwise, subtracts the `amount` from @fruit and returns it's new value.
#     The default `amount` is 1.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit      #=> 50
#
#     orange_tree.pick!      #=> 49
#     orange_tree.fruit      #=> 49
#
#     orange_tree.pick!(5)   #=> 44
#     orange_tree.fruit      #=> 44
#
#     orange_tree.pick!(50)  #=> nil
#     orange_tree.fruit      #=> 44

#     orange_tree = variable which holds onto the data or box from the
#     class, so the @friut value retains the information since it is stored
#     in the orange_tree variable.

#     the class call only uses the initialize function once, that is why
#     the @fruit never resets to 50

# rubocop:disable TrivialAccessors
class OrangeTree
  def initialize
    @fruit = 50
  end

  # def fruit=(fruit) is a writer method due to the equal sign
  def fruit
    @fruit
  end

  def pick!(amount = 1) # check what happens if you change pick! to pick
    if @fruit < amount
      nil
    else
      @fruit -= amount
      # return nil if fruit < amount
      # @fruit -= amount
    end
  end
end
