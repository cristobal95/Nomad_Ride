require "open-uri"

users = [
  {
    first_name: "Cristóbal",
    last_name: "Selame",
    username: "cris",
    email: "cris@nomad.com",
    password: "123456"
  },
  {
    first_name: "Braian",
    last_name: "Ocares",
    username: "braian",
    email: "braian@nomad.com",
    password: "123456"
  },
  {
    first_name: "Juan Manuel",
    last_name: "Binda",
    username: "juanma",
    email: "juanma@nomad.com",
    password: "123456"
  },
  {
    first_name: "Hugo",
    last_name: "Acosta",
    username: "hugo",
    email: "hugo@nomad.com",
    password: "123456"
  }
]

users.each do |u|
  User.create!(u)
end

puts "Users creados"

caravan_1 = Caravan.new(
  brand: "Ford",
  year: 2020,
  model: "Modelo 1",
  capacity: 4,
  gas_type: "Gasolina",
  description: "Descripción de la caravana 1.",
  user_id: 2
)
photo_1 = URI.open("https://acroadtrip.blob.core.windows.net/catalogo-imagenes/s/RT_V_9527866fefb84e3e840b1fd28e2a23c0.jpg")
caravan_1.photo.attach(io: photo_1, filename: "Ford_1.png", content_type: "image/png")
caravan_1.save!

caravan_2 = Caravan.new(
  brand: "Volvo",
  year: 2018,
  model: "Modelo 2",
  capacity: 6,
  gas_type: "Diésel",
  description: "Descripción de la caravana 2.",
  user_id: 1
)
photo_2 = URI.open("https://i.pinimg.com/originals/4d/d5/de/4dd5def8461fd85719293769826481ad.jpg")
caravan_2.photo.attach(io: photo_2, filename: "Volvo_2.png", content_type: "image/png")
caravan_2.save!

caravan_3 = Caravan.new(
  brand: "Ford",
  year: 2021,
  model: "Modelo 4",
  capacity: 8,
  gas_type: "Electric",
  description: "Descripción de la caravana 4.",
  user_id: 2
)
photo_3 = URI.open("https://cdn.motor1.com/images/mgl/88RyP/s1/4x3/2021-winnebago-ekko.webp")
caravan_3.photo.attach(io: photo_3, filename: "Ford_3.png", content_type: "image/png")
caravan_3.save!

caravan_4 = Caravan.new(
  brand: "Volvo",
  year: 2020,
  model: "Modelo 5",
  capacity: 4,
  gas_type: "Diésel",
  description: "Descripción de la caravana 5.",
  user_id: 3
)

photo_4 = URI.open("https://elborne.com.ar/wp-content/uploads/2015/04/FH.jpg")
caravan_4.photo.attach(io: photo_4, filename: "Volvo_4.png", content_type: "image/png")
caravan_4.save!

caravan_5 = Caravan.new(
  brand: "Nissan",
  year: 2020,
  model: "Modelo 6",
  capacity: 6,
  gas_type: "Gasolina",
  description: "Descripción de la caravana 6.",
  user_id: 2
)

photo_5 = URI.open("https://www.trucksnl.com/pictures/ad-7334452-8d463e226537cc8d/caravana_alcoba_volvo_fl300_camper_like_new_2x_slide_out_hydraulic_stamps_automatic_euro5_2010_7334452.jpg")
caravan_5.photo.attach(io: photo_5, filename: "Nissan_5.png", content_type: "image/png")
caravan_5.save!

caravan_6 = Caravan.new(
  brand: "Renault",
  year: 2022,
  model: "Modelo 3",
  capacity: 8,
  gas_type: "Gasolina",
  description: "Descripción de la caravana 3.",
  user_id: 2
)

photo_6 = URI.open("https://www.motor.es/fotos-noticias/2013/05/renault-kangoo-travel-pack-renault-kangoo-travel-pack-la-auto-caravana-mas-pequena-201313557_18.jpg")
caravan_6.photo.attach(io: photo_6, filename: "Renault_6.png", content_type: "image/png")
caravan_6.save!

puts "Caravanas creadass"

reservations = [
  {
    user_id: 1,
    caravan_id: 4,
    start_date: "2023/06/08",
    finish_date: "2023/07/08"
  },
  {
    user_id: 2,
    caravan_id: 1,
    start_date: "2023/08/14",
    finish_date: "2023/09/10"
  },
  {
    user_id: 3,
    caravan_id: 2,
    start_date: "2023/04/15",
    finish_date: "2023/05/15"
  }
]

reservations.each do |r|
  Reservation.create!(r)

end
puts "Reservations creados"
