# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new
user.password = '123456'
user.name = 'Karen Ventura'
user.email = 'karen@hcp.com'
user.save!

user.update(password: Faker::Internet.password)
(1..10).each do |_index|
  user = User.new
  user.password = '123456'
  user.name = Faker::Name.name
  user.email = Faker::Internet.email
  user.save!
end
