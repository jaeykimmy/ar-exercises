require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
end

Store.create(
  :name => "Surrey", 
  :annual_revenue => 224000,
  :mens_apparel => false, 
  :womens_apparel => true)

Store.create(
  :name => "Whistler", 
  :annual_revenue => 1900000,
  :mens_apparel => true, 
  :womens_apparel => false)

Store.create(
  :name => "Yaletown", 
  :annual_revenue => 430000,
  :mens_apparel => true, 
  :womens_apparel => true)

@mens_stores = Store.where(
    :mens_apparel => true)

@mens_stores.all.each do |store|
  puts store.name, store.annual_revenue
end

@womens_stores = Store.where(
  :womens_apparel => true
)

pp @womens_stores.select{|store|
store[:annual_revenue] < 1000000}