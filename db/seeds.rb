# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: "pierreaveorus@gmail.com", password: "password")

session1 = Session.create!(title: "toto", user_id: 1, from: "marseille", spot: "brutal", sport: "surf", start_date: "19/12/1996", end_date: "21/12/1996" )
