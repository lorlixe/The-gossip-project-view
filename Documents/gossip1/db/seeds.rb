# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Gossip.destroy_all
User.destroy_all


# création de user
10.times do
    user = User.create(first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    # description: Faker::GameOfThrones.quote, 
    email: Faker::Internet.email, 
      age: rand(15..99))
end


10.times do # creation 20 gossips
  Gossip.create(title: Faker::Hipster.word, content: Faker::ChuckNorris.fact, user: User.all.sample )
end