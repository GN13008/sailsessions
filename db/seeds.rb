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

puts "Users are create"
puts "Creating 1 ride"

ride1 = Ride.new(title: "Grosse Session à l'almanarre", from: "Marseille", spot: "l'almanarre", start_date: "19/05/2021", end_date: "19/05/2021" )
ride1.user = gui
ride1.sport = kite
ride1.save
puts "#{ride1.title} is create" 

puts "Sessions are create"





