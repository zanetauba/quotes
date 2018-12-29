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
 quote1 = Quote.create(content: 'How often have I said that when you have excluded the impossible whatever remains, however improbable, must be the truth.')
 quote2 = Quote.create(content: 'I make a point of never having any prejudices, and of following docilely where fact may lead me.')
 quote3 = Quote.create(content: "He's so stupid he doesn't realize how miserable he should be")
 quote4 = Quote.create(content: 'I’m responsible for my own happiness? I can’t even be responsible for my own breakfast!')
 quote5 = Quote.create(content: 'Not understanding that you’re a horrible person doesn’t make you less of a horrible person')



