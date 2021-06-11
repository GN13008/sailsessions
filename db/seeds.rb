require 'open-uri'
puts "----- Cleaning Database / Users & Offers -----"

User.destroy_all
Sport.destroy_all
Booking.destroy_all
UserSport.destroy_all
Ride.destroy_all


puts "-------- Seeding in process --------"

puts "Creating 5 sports"
surf = Sport.create!(name: "Surf", description: "Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335105/surf_hqehba.jpg")
sup = Sport.create!(name: "Stand up paddle", description: "Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335140/sup_z0elub.jpg")
wind = Sport.create!(name: "Windsurf", description: "Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335139/wind_zul21x.jpg")
kite = Sport.create!(name: "Kitesurf", description: "Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335140/kite_q0dcc5.jpg")
wake = Sport.create!(name: "Wakeboard", description: "Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335116/wake_qqsr4x.jpg")


puts "Sports creation finished"
puts "Creating 4 users"

gui = User.create!(email: "gui@gmail.com", password: "password", bio: "Bonjour je m'appelle Guillaume passionné de kitesurf je recherche une communauté pour partager ma passion et faire de nouvelles rencontres mais aussi pour partager un moment agréable" , name: "Guillaume Negro", age: "27ans")
# guiimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622628942/pk5n4dap7dnsoeed7f3izmfny1jk.png")
# gui.photo.attach(io: guiimage, filename: 'v1622628942pk5n4dap7dnsoeed7f3izmfny1jk.png')

ibra = User.create!(email: "ibra@gmail.com", password: "password", bio: "salut moi c'est Ibrahim j'adore rencontrer de nouvelles personnes, je suis un grand fan du paddle cela me permet de voir des paysages extraordinaires alors pourquoi pas le faire à plusieurs" , name: "Ibrahim", age: "25ans")
flo = User.create!(email: "flo@gmail.com", password: "password" , bio: "bonjour je me présente Florent je suis professionnelle de Sailboard j'aimerais trouver des gens qui ont un bon niveau pour fair des grosses sessions et partager mon savoir-faire et mes skills" , name: "Florent", age: "32ans")
pierre = User.create!(email: "pierre@gmail.com", password: "password", bio: "Bonjour moi c'est Pierre je pratique le surf depuis 5 ans environ mais c’est vrai que je surf tout le temps en solitaire et Jen a un peu marre du coup je suis ici pour faire pleins de rencontre partager un bon moment et bien sûr surfer la vague" , name: "Pierre", age: "24ans")

puts "Users are created"
puts "Creating 3 rides"

ride1 = Ride.new(title: "Grosse Session à l'almanarre", from: "Marseille", spot: "l'almanarre", start_time: "10:00", end_time: "18:00", date: "19/06/2021" )
ride1.user = gui
ride1.sport = kite
ride1.save
puts "#{ride1.title} is created"

ride2 = Ride.new(title: "Session afterwork", from: "Marseille", spot: "six-four", start_time: "9:00", end_time: "17:00", date: "16/06/2021" )
ride2.user = pierre
ride2.sport = surf
ride2.save
puts "#{ride2.title} is created"

ride3 = Ride.new(title: "Session afterwork", from: "Aix", spot: "six-four", start_time: "18:00", end_time: "20:00", date: "17/06/2021" )
ride3.user = pierre
ride3.sport = sup
ride3.save
puts "#{ride3.title} is created"

ride4 = Ride.new(title: "Session afterwork", from: "Aix", spot: "Aix", start_time: "18:00", end_time: "20:00", date: "20/06/2021" )
ride4.user = ibra
ride4.sport = wake
ride4.save
puts "#{ride4.title} is created"

puts "Sessions are created"
puts "Creating 3 bookings"

booking1 = Booking.new()
booking1.user = gui
booking1.ride = ride3
booking1.save
puts "Guillaume reserve la session sup de Pierre"

booking2 = Booking.new()
booking2.user = gui
booking2.ride = ride2
booking2.save
puts "Guillaume reserve la session surf de Pierre"

booking3 = Booking.new()
booking3.user = pierre
booking3.ride = ride1
booking3.save
puts "Pierre reserve la session kite de Guillaume"

puts "booking are done"
