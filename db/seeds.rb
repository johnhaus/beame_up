# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'User', email: 'user@user.com', password: 123456)
User.create!(name: 'John', email: 'john@user.com', password: 123456)
User.create!(name: 'Mary', email: 'mary@user.com', password: 123456)
User.create!(name: 'Ann', email: 'ann@user.com', password: 123456)
User.create!(name: 'Will', email: 'will@user.com', password: 123456)


Scooter.create!(name: 'Vezpa', description: '', user: User.first)
Scooter.create!(name: 'Beoncy', description: '', user: User.second)
Scooter.create!(name: 'Bizoo', description: '', user: User.third)
Scooter.create!(name: 'Belha', description: '', user: User.fourth)
Scooter.create!(name: 'Fierce', description: '', user: User.fifth)
