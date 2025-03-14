require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store1.employees.create(first_name: "James", last_name: "Kim", hourly_rate: 50)
  @store2.employees.create(first_name: "Jayson", last_name: "Tyler-Sankersingh", hourly_rate: 55)
  @store2.employees.create(first_name: "Haejung", last_name: "Yoon", hourly_rate: 62)
end

class Employee < ActiveRecord::Base
  belongs_to :store
  
end
