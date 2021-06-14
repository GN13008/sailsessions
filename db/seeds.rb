require 'open-uri'
puts "----- Cleaning Database / Users & Offers -----"

Booking.destroy_all
Ride.destroy_all
UserSport.destroy_all
Sport.destroy_all
User.destroy_all






puts "-------- Seeding in process --------"

puts "Creating 11 sports"
surf = Sport.create!(name: "Surf", description: "Pour une session réussie, réserve ton spot à l'avance, n'oublie pas ta bonne humeur et l'objet d'échange de la session. Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335105/surf_hqehba.jpg")
sup = Sport.create!(name: "Stand up paddle", description: "Pour une session réussie, réserve ton spot à l'avance, n'oublie pas ta bonne humeur et l'objet d'échange de la session. Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335140/sup_z0elub.jpg")
wind = Sport.create!(name: "Windsurf", description: "Pour une session réussie, réserve ton spot à l'avance, n'oublie pas ta bonne humeur et l'objet d'échange de la session. Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335139/wind_zul21x.jpg")
kite = Sport.create!(name: "Kitesurf", description: " Pour une session réussie, réserve ton spot à l'avance, n'oublie pas ta bonne humeur et l'objet d'échange de la session. Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335140/kite_q0dcc5.jpg")
wake = Sport.create!(name: "Wakeboard", description: "Pour une session réussie, réserve ton spot à l'avance, n'oublie pas ta bonne humeur et l'objet d'échange de la session. Pense a préciser la taille de ta planche pour assurer le transport :)", image_url:"https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623335116/wake_qqsr4x.jpg")
motomarine = Sport.create!(name: "Motomarine", description: "Pour une session réussie, réserve ton spot à l'avance, n'oublie pas ta bonne humeur et l'objet d'échange de la session. Une motomarine, aussi nommée scooter des mers, moto aquatique ou véhicule nautique à moteur (VNM, selon la terminologie ministérielle en France), est un petit véhicule de loisir nautique que l'on chevauche et qui est propulsé par un hydrojet, lui-même actionné par un moteur à combustion. Souvent, cet engin est désigné par antonomase par les termes jet ski ou sea-doo, deux marques commerciales de motomarines.", image_url: "https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623656113/samples/Sport%20Nautiqiues/motoski_tw7jn9.jpg")
flyboard = Sport.create!(name:"Flyboard", description: "Le Flyboard est un type de jetpack nautique raccordé à une motomarine (Jet ski) qui lui fournit de l'eau sous pression.", image_url: "https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623656113/samples/Sport%20Nautiqiues/520px-Flyboard_Lesson_-_Merritt_Island_FL_gd21nn.jpg")
skimboard = Sport.create!(name:"Skimboard", description: "Le skimboard ou la planche de plage1 est un sport de glisse qui consiste à surfer sur une vague en se lançant de la plage. Le nom vient du verbe anglais to skim (écumer, écrémer, frôler) et de board (planche), comme dans surfboard (planche de surf), un skimboard est donc littéralement une « planche à frôler/écumer » car elle plane au ras de l'eau.", image_url: "https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623656113/samples/Sport%20Nautiqiues/skimboard_p7q0dn.jpg")
aviron = Sport.create!(name:"Aviron", description: "L'aviron fait partie de la famille des sports nautiques. C'est un sport olympique depuis la création des Jeux olympiques modernes en 1896 sous l'impulsion du baron Pierre de Coubertin. Ce sport consiste à propulser une forme, étroite et allongée, de traînière à l'aide de rames, également appelées avirons", image_url: "https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623656113/samples/Sport%20Nautiqiues/aviron_ck0zic.jpg")
bateau_dragon = Sport.create!(name:"Bateau-dragon", description: "Le bateau-dragon est un sport nautique d’équipe qui utilise un type de pirogue appelé aussi bateau-dragon. Les bateaux-dragons de classe internationale qui sont plus petits que les modèles traditionnels pour des raisons de coûts de transports, embarquent 22 personnes dont 20 pagayeurs.", image_url: "https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623656113/samples/Sport%20Nautiqiues/560px-Dragon_boat_-_Cantonese_e8o5wq.jpg")
canoe = Sport.create!(name:"Canoë-kayak", description: "Le canoë-kayak est une activité physique de loisir ou sportive, pratiquée avec des embarcations propulsées à la pagaie ou la main, notamment le canoë, le kayak, le raft, ou la pirogue. Cette activité est également désignée par « sports de pagaie ».", image_url: "https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623656113/samples/Sport%20Nautiqiues/440px-Canoe-kayak-marathon_hfksip.jpg")

puts "Sports creation finished"
puts "Creating 4 users"

gui = User.create!(email: "gui@gmail.com", password: "password", bio: "Bonjour je m'appelle Guillaume passionné de kitesurf je recherche une communauté pour partager ma passion et faire de nouvelles rencontres" , name: "Guillaume Negro", age: "27ans")
guiimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622566275/kgmq5p8plbevum8zdrh8yj7xtjej.jpg")
gui.photo.attach(io: guiimage, filename: 'v1622566275/kgmq5p8plbevum8zdrh8yj7xtjej.jpg')

ibra = User.create!(email: "ibra@gmail.com", password: "password", bio: "salut moi c'est Ibrahim j'adore rencontrer de nouvelles personnes, je suis un grand fan de paddle cela me permet de voir des paysages extraordinaires alors pourquoi pas le faire à plusieurs" , name: "Ibrahim", age: "25ans")
ibraimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622810359/1fqi4b3snnhqeb44jisl9rdtyhgi.jpg")
ibra.photo.attach(io: ibraimage, filename: 'v1622810359/1fqi4b3snnhqeb44jisl9rdtyhgi.jpg')

flo = User.create!(email: "flo@gmail.com", password: "password" , bio: "bonjour je me présente Florent je suis professionnelle de windsurf j'aimerais trouver des gens qui ont un bon niveau pour faire des grosses sessions et partager mon savoir-faire et mes skills" , name: "Florent", age: "32ans")

pierre = User.create!(email: "pierre@gmail.com", password: "password", bio: "Bonjour moi c'est Pierre je pratique le surf depuis 5 ans environ. Je surf tout le temps en solitaire et j'en ai un peu marre du coup je suis ici pour faire pleins de rencontre partager un bon moment et bien sûr surfer la vague" , name: "Pierre", age: "24ans")
pierreimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630654/p57fyzk3qxk1y0qr25cfxdy1lo8l.jpg")
pierre.photo.attach(io: pierreimage, filename: 'v1622630654/p57fyzk3qxk1y0qr25cfxdy1lo8l.jpg')

puts "Users are created"
puts "Creating 6 rides"


ride1 = Ride.new(title: "Grosse Session à l'almanarre", from: "Marseille", spot: "18 Route du Sel, Hyères", start_time: "10:00", end_time: "18:00", date: "19/06/2021", nb_of_place: 2)
ride1.user = gui
ride1.sport = kite
ride1.save
Chatroom.create(name: ride1.title, ride_id: ride1.id)
puts "#{ride1.title} is created"

ride2 = Ride.new(title: "Grosse houle en approche", from: "Marseille", spot: "18 Route du Sel, Hyères", start_time: "9:00", end_time: "17:00", date: "16/06/2021", nb_of_place: 2 )
ride2.user = pierre
ride2.sport = surf
ride2.save
Chatroom.create(name: ride2.title, ride_id: ride2.id)
puts "#{ride2.title} is created"

ride3 = Ride.new(title: "Session de Deux Jours", from: "Aix", spot: "18 Route du Sel, Hyères", start_time: "18:00", end_time: "20:00", date: "17/06/2021", nb_of_place: 2 )
ride3.user = pierre
ride3.sport = sup
ride3.save
Chatroom.create(name: ride3.title, ride_id: ride3.id)
puts "#{ride3.title} is created"

ride4 = Ride.new(title: "Briser la vague à Nice", from: "Aix", spot: "18 Route du Sel, Hyères", start_time: "18:00", end_time: "20:00", date: "20/06/2021", nb_of_place: 3 )
ride4.user = ibra
ride4.sport = wake
ride4.save
Chatroom.create(name: ride4.title, ride_id: ride4.id)
puts "#{ride4.title} is created"

ride5 = Ride.new(title: "Beauduc pour la vie", from: "Marseille", spot: "18 Route du Sel, Hyères", start_time: "06:00", end_time: "23:00", date: "20/06/2021", nb_of_place: 3, description: "Dimanche y'a cartouche à beauduc, GO envoyer du lourd les gars" )
ride5.user = ibra
ride5.sport = kite
ride5.save
Chatroom.create(name: ride5.title, ride_id: ride5.id)
puts "#{ride5.title} is created"

ride6 = Ride.new(title: "Balade dans les calanques", from: "Marseille", spot: "18 Route du Sel, Hyères", start_time: "18:00", end_time: "20:00", date: "20/06/2021", nb_of_place: 3, description: "Je partage des bon spots puis on se boit une bière ?" )
ride6.user = flo
ride6.sport = sup
ride6.save
Chatroom.create(name: ride6.title, ride_id: ride6.id)
puts "#{ride6.title} is created"

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

booking4 = Booking.new()
booking4.user = flo
booking4.ride = ride1
booking4.save
puts "Flo reserve la session kite de Guillaume"

booking5 = Booking.new()
booking5.user = ibra
booking5.ride = ride2
booking5.save
puts "ibra reserve la session surf de Pierre"

puts "booking are done"
