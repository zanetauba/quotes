# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy quotes"
Quote.destroy_all if Rails.env.development?

puts "Destroy comments"
Comment.destroy_all if Rails.env.development?

puts "Create quotes"
 quote1 = Quote.create(content: 'Life is hard')
 quote2 = Quote.create(content: 'Life is hard')
 quote3 = Quote.create(content: 'Life is hard')
 quote4 = Quote.create(content: 'Life is hard')
 quote5 = Quote.create(content: 'Life is hard')



