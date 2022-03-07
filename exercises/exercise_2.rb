require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
    @store1 = Store.find(1)
    @store1.update(name: "Toronto")
    @store2 = Store.find(2)
end
