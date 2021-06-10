require 'open-uri'
puts "----- Cleaning Database / Users & Offers -----"

User.destroy_all
Sport.destroy_all
Booking.destroy_all
UserSport.destroy_all
Ride.destroy_all


puts "-------- Seeding in process --------"

puts "Creating 5 sports"
surf = Sport.create!(name: "Surf", description: "Pense a préciser la taille de ta planche pour assurer le transport :)")
# surfimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622628942/pk5n4dap7dnsoeed7f3izmfny1jk.png")
# surf.photo.attach(io: surfimage, filename: 'v1622628942pk5n4dap7dnsoeed7f3izmfny1jk.png')

sup = Sport.create!(name: "Stand up paddle", description: "Pense a préciser la taille de ta planche pour assurer le transport :)")
wind = Sport.create!(name: "Windsurf", description: "Pense a préciser la taille de ta planche pour assurer le transport :)")
kite = Sport.create!(name: "Kitesurf", description: "Pense a préciser la taille de ta planche pour assurer le transport :)")
wake = Sport.create!(name: "Wakeboard", description: "Pense a préciser la taille de ta planche pour assurer le transport :)")


puts "Sports creation finished"
puts "Creating 4 users"

gui = User.create!(email: "gui@gmail.com", password: "password")
# guiimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622628942/pk5n4dap7dnsoeed7f3izmfny1jk.png")
# gui.photo.attach(io: guiimage, filename: 'v1622628942pk5n4dap7dnsoeed7f3izmfny1jk.png')

ibra = User.create!(email: "ibra@gmail.com", password: "password")
flo = User.create!(email: "flo@gmail.com", password: "password")
pierre = User.create!(email: "pierre@gmail.com", password: "password")

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
