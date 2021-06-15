require 'open-uri'
puts "----- Cleaning Database / Users & Offers -----"

Booking.destroy_all
Message.destroy_all
Chatroom.destroy_all
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

gui = User.create!(email: "gui@gmail.com", password: "password", bio: "Bonjour, je m'appelle Guillaume passionné de kitesurf, je recherche une communauté pour partager ma passion et faire de nouvelles rencontres" , name: "Guillaume Negro", age: "27ans")
guiimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623672680/5s351z6q1xad16lch5z60lbchiog.jpg")
gui.photo.attach(io: guiimage, filename: 'v1623672680/5s351z6q1xad16lch5z60lbchiog.jpg')

ibra = User.create!(email: "ibra@gmail.com", password: "password", bio: "Salut moi c'est Ibrahim j'adore rencontrer de nouvelles personnes, je suis un grand fan de paddle cela me permet de voir des paysages extraordinaires alors pourquoi pas le faire à plusieurs" , name: "Ibrahim", age: "25ans")
ibraimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622810359/1fqi4b3snnhqeb44jisl9rdtyhgi.jpg")
ibra.photo.attach(io: ibraimage, filename: 'v1622810359/1fqi4b3snnhqeb44jisl9rdtyhgi.jpg')

flo = User.create!(email: "flo@gmail.com", password: "password" , bio: "Bonjour, je me présente Florent, professionnel de windsurf j'aimerais rencontrer d'autres passionnés qui ont un bon niveau pour faire des grosses sessions et partager mon savoir-faire" , name: "Florent", age: "32ans")

pierre = User.create!(email: "pierre@gmail.com", password: "password", bio: "Bonjour moi c'est Pierre, je pratique le surf depuis 5 ans environ. Je surf tout le temps en solitaire et j'en ai un peu marre du coup je suis ici pour faire pleins de rencontres afin de partager un bon moment et bien sûr surfer la vague" , name: "Pierre", age: "24ans")
pierreimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1622630654/p57fyzk3qxk1y0qr25cfxdy1lo8l.jpg")
pierre.photo.attach(io: pierreimage, filename: 'v1622630654/p57fyzk3qxk1y0qr25cfxdy1lo8l.jpg')

thomas = User.create!(email: "thomas@gmail.com", password: "password", bio: "Bonjour, Thomas au clavier! Je suis débutant en surf et j’aimerais rencontrer une communauté pour partager diverses expériences" , name: "Thomas", age: "35ans")
thomasimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623748074/T02NE0241-U01U54RMWNB-25d748d280ba-512_hhnzwe.jpg")
thomas.photo.attach(io: thomasimage, filename: 'v1623748074/T02NE0241-U01U54RMWNB-25d748d280ba-512_hhnzwe.jpg')

paul = User.create!(email: "paul@gmail.com", password: "password", bio: "Bonjour moi c'est Paul je pratique le kitesurf et j’aimerais trouver une communauté pour partager de bons moments" , name: "Paul", age: "28ans")
paulimage = URI.open("https://res.cloudinary.com/dqc8dpu1n/image/upload/v1623748340/T02NE0241-UP3G6NUJY-67d30e168b0a-512_kd72af.jpg")
paul.photo.attach(io: paulimage, filename: 'v1623748340/T02NE0241-UP3G6NUJY-67d30e168b0a-512_kd72af.jpg')


puts "Users are created"
puts "Creating 6 rides"


ride1 = Ride.new(title: "Grosse Session à l'almanarre", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "18 Route du Sel, Hyères", start_time: "10:00", end_time: "18:00", date: "19/06/2021", nb_of_place: 2)
ride1.user = gui
ride1.sport = kite
ride1.save
Chatroom.create(name: ride1.title, ride_id: ride1.id)
puts "#{ride1.title} is created"

ride2 = Ride.new(title: "Grosse houle en approche", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "18 Route du Sel, Hyères", start_time: "9:00", end_time: "17:00", date: "16/06/2021", nb_of_place: 2 )
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

ride5 = Ride.new(title: "Beauduc pour la vie", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "18 Route du Sel, Hyères", start_time: "06:00", end_time: "23:00", date: "20/06/2021", nb_of_place: 3, description: "Dimanche y'a cartouche à beauduc, GO envoyer du lourd les gars" )
ride5.user = ibra
ride5.sport = kite
ride5.save
Chatroom.create(name: ride5.title, ride_id: ride5.id)
puts "#{ride5.title} is created"

ride6 = Ride.new(title: "Balade dans les calanques", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "18 Route du Sel, Hyères", start_time: "18:00", end_time: "20:00", date: "20/06/2021", nb_of_place: 3, description: "Je partage des bon spots puis on se boit une bière ?" )
ride6.user = flo
ride6.sport = sup
ride6.save
Chatroom.create(name: ride6.title, ride_id: ride6.id)
puts "#{ride6.title} is created"

ride7 = Ride.new(title: "Session au Brusc", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "Plage du Cros", start_time: "08:00", end_time: "18:00", date: "17/07/2021", nb_of_place: 2)
ride7.user = paul
ride7.sport = kite
ride7.save
Chatroom.create(name: ride7.title, ride_id: ride7.id)
puts "#{ride7.title} is created"

ride8 = Ride.new(title: "Vers un spot secret", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "283 Avenue des Calanques, 13600 La Ciotat", start_time: "10:00", end_time: "20:00", date: "03/07/2021", nb_of_place: 5)
ride8.user = thomas
ride8.sport = kite
ride8.save
Chatroom.create(name: ride8.title, ride_id: ride8.id)
puts "#{ride8.title} is created"

ride9 = Ride.new(title: "Session de kitesurf", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "23 Corniche du Cros, 83140 Six-Fours-les-Plages", start_time: "10:00", end_time: "16:00", date: "03/07/2021", nb_of_place: 5)
ride9.user = pierre
ride9.sport = kite
ride9.save
Chatroom.create(name: ride9.title, ride_id: ride9.id)
puts "#{ride9.title} is created"

ride10 = Ride.new(title: "Session de surf", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "Avenue du Port, 83270 Saint-Cyr-sur-Mer", start_time: "06:00", end_time: "18:00", date: "19/06/2021", nb_of_place: 3)
ride10.user = pierre
ride10.sport = surf
ride10.save
Chatroom.create(name: ride10.title, ride_id: ride10.id)
puts "#{ride10.title} is created"

ride11 = Ride.new(title: "Session spot secret", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "Avenue du Port, 83270 Saint-Cyr-sur-Mer", start_time: "06:00", end_time: "18:00", date: "19/06/2021", nb_of_place: 3)
ride11.user = flo
ride11.sport = surf
ride11.save
Chatroom.create(name: ride11.title, ride_id: ride11.id)
puts "#{ride11.title} is created"

ride12 = Ride.new(title: "Session à rouet", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "Unnamed Road, 13620 Carry-le-Rouet", start_time: "12:00", end_time: "19:00", date: "25/06/2021", nb_of_place: 4)
ride12.user = gui
ride12.sport = surf
ride12.save
Chatroom.create(name: ride12.title, ride_id: ride12.id)
puts "#{ride12.title} is created"

ride13 = Ride.new(title: "Session à Bandol", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "5 Rue Raimu, 83150 Bandol", start_time: "10:00", end_time: "15:00", date: "25/06/2021", nb_of_place: 4)
ride13.user = gui
ride13.sport = sup
ride13.save
Chatroom.create(name: ride13.title, ride_id: ride13.id)
puts "#{ride13.title} is created"

ride14 = Ride.new(title: "Session à port d'alon", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "Le Port d'Alon, 83270 Saint-Cyr-sur-Mer", start_time: "09:00", end_time: "12:00", date: "03/07/2021", nb_of_place: 4)
ride14.user = ibra
ride14.sport = sup
ride14.save
Chatroom.create(name: ride14.title, ride_id: ride14.id)
puts "#{ride14.title} is created"

ride15 = Ride.new(title: "Session Relax", from: "Marseille, Provence-Alpes-Côte d'Azur, France", spot: "13230 Port-Saint-Louis-du-Rhône", start_time: "09:00", end_time: "16:00", date: "04/07/2021", nb_of_place: 4)
ride15.user = paul
ride15.sport = sup
ride15.save
Chatroom.create(name: ride15.title, ride_id: ride15.id)
puts "#{ride15.title} is created"



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
