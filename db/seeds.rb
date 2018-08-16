# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!(name: 'User', email: 'user@user.com', password: 123456)
# User.create!(name: 'John', email: 'john@user.com', password: 123456)
# User.create!(name: 'Mary', email: 'mary@user.com', password: 123456)
# User.create!(name: 'Ann', email: 'ann@user.com', password: 123456)
# User.create!(name: 'Will', email: 'will@user.com', password: 123456)


# Scooter.create!(name: 'Vezpa', description: 'Mean Vezpa', user: User.first)
# Scooter.create!(name: 'Beoncy', description: 'Fast as hell', user: User.second)
# Scooter.create!(name: 'Bizoo', description: 'Killer speed', user: User.third)
# Scooter.create!(name: 'Belha', description: 'Chilling on the way', user: User.fourth)
# Scooter.create!(name: 'Fierce', description: 'Enjoy the ride', user: User.fifth)


5.times do |t|
  user = User.create(name: Faker::FunnyName.name, email: Faker::Internet.email, password: 123456)
end

user = User.create!(name: "owner", email: "owner@gmail.com", password: 123456)
3.times do
  user.scooters.create!({
    name: Faker::GameOfThrones.character,
    description: Faker::GameOfThrones.quote,
    remote_picture_url: "https://picsum.photos/200/300/?random"
  })
end



