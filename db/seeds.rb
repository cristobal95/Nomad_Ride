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
  model: "Truck Move",
  capacity: 4,
  gas_type: "Gasolina",
  description: "Caravana de gran volumen,fabricada en USA,con todas la comodidades de una autocaravana  en un espacio mas reducido . Vehículo nuevo,  que se conduce  con la misma facilidad que un turismo. Espaciosa  y muy manejable,  para hacer un viaje diferente   en un vehículo con una novedosa distribución :  4 plazas en marcha y 4 para dormir , distribuÍdos en 2 camas de matrimonio separadas (una trasera transversal en la parte baja y otra en el techo elevable accediendo por escalera ) de tal manera que se puede hacer uso de todo el camper con las dos camas montadas.",
  user_id: 1,
  address: "Buenos Aires",
  latitude: -34.5248057,
  longitude: -58.4833146,
  day_price: 69
)
photo_1 = URI.open("https://noticias.coches.com/wp-content/uploads/2016/10/caravana-vario-mobil.jpg")
caravan_1.photo.attach(io: photo_1, filename: "Ford_1.png", content_type: "image/png")
caravan_1.save!

caravan_2 = Caravan.new(
  brand: "Volvo",
  year: 2018,
  model: "Confort",
  capacity: 6,
  gas_type: "Diésel",
  description: "Aire acondicionado sólo en cabina. Airbag conductor y copiloto. Placa solar. Segunda batería Equipamiento: clarabollas y ventanas con mosquitera y oscurecedores. Frigorifico trivalente con congelador. Calefacción y agua caliente. Cocina con triple fuego y fregadero. Baño con lavabo, ducha, armario, WC químico. Capacidad del tanque de aguas limpias de 100 y aguas grises de 100. Cuadro de control de calefacción, agua caliente, niveles de aguas limpias, grises y baterias. Mosquitera puerta.",
  user_id: 2,
  address: "Santiago de Chile",
  latitude: -33.5081562,
  longitude: -70.5931697,
  day_price: 80
)
photo_2 = URI.open("https://1.bp.blogspot.com/-pdbJvkdR4WA/UF8q9XxXcbI/AAAAAAAATrY/jbLn2WNGgP4/s1600/Auto-Sleepers+Cotswold+EB.jpg")
caravan_2.photo.attach(io: photo_2, filename: "Volvo_2.png", content_type: "image/png")
caravan_2.save!

caravan_3 = Caravan.new(
  brand: "Ford",
  year: 2021,
  model: "House Feel",
  capacity: 8,
  gas_type: "Electric",
  description: "Preciosa y nueva caravana integral con  una conduccion que te permitira una vision panoramica que te enamorara durante tu viaje.Cama en lsla trasera muy amplia.con glp(no tendras que cambiar botella de gas).muy comodo.amplio garaje donde caben hasta bicicletas",
  user_id: 3,
  address: "Santa Cruz de la Sierra",
  latitude: -17.8057529,
  longitude: -63.1787717,
  day_price: 125
)
photo_3 = URI.open("https://www.luxecaravaning.com/blog/wp-content/uploads/2015/08/csm_eyec_globebusiimage_65a0630491.jpg")
caravan_3.photo.attach(io: photo_3, filename: "Ford_3.png", content_type: "image/png")
caravan_3.save!

caravan_4 = Caravan.new(
  brand: "Volvo",
  year: 2020,
  model: "Rider",
  capacity: 4,
  gas_type: "Diésel",
  description: "Vehículo perfecto para estancia de familias con todas las comodidades de un hogar o parejas con ganas de descubrir todo un mundo",
  user_id: 1,
  address: "Buenos Aires",
  latitude: -34.5248057,
  longitude: -58.4833146,
  day_price: 97
)

photo_4 = URI.open("https://mundovan.com/wp-content/uploads/2021/02/Autocaravana-de-ocasi%C3%B3n-Benimar-Mileo-242.jpg")
caravan_4.photo.attach(io: photo_4, filename: "Volvo_4.png", content_type: "image/png")
caravan_4.save!

caravan_5 = Caravan.new(
  brand: "Nissan",
  year: 2020,
  model: "Big Model",
  capacity: 6,
  gas_type: "Gasolina",
  description: "Nuestra caravana es perfecta para toda la familia, o para ese road trip de amigas que siempre quisisteis hacer, o para una escapada en pareja sin rumbo, ni planes cerrados…en definitiva, nuestra Camper es perfecta para todas las aventuras que se os ocurran. ¿Y todo esto por qué? Pues por las increíbles soluciones constructivas que tiene, es compacta, espaciosa, con gran almacenaje, dos camas siempre",
  user_id: 2,
  address: "Santa Cruz de la Sierra",
  latitude: -17.8057529,
  longitude: -63.1787717,
  day_price: 145
)

photo_5 = URI.open("http://cdn.pymesenlared.es/img/45/579/2106/caravanas-y-autocaravas.jpg")
caravan_5.photo.attach(io: photo_5, filename: "Nissan_5.png", content_type: "image/png")
caravan_5.save!

caravan_6 = Caravan.new(
  brand: "Renault",
  year: 2022,
  model: "Model T",
  capacity: 8,
  gas_type: "Gasolina",
  description: "Nuestro vehículo es perfecto para viajes en familia con dos niños o entre amigos. Gracias a sus dimensiones, la conducción se asemeja a la de un coche, es posible entrar en las ciudades y aparcar en la mayoría de aparcamientos públicos.",
  user_id: 3,
  address: "Buenos Aires, Argentina",
  latitude: -17.8057529,
  longitude: -63.1787717,
  day_price: 110
)

photo_6 = URI.open("https://cdn.mentesoficial.com/embed/a3c043f0b89cac693949144f9d1545152330/front-33.jpg")
caravan_6.photo.attach(io: photo_6, filename: "Renault_6.png", content_type: "image/png")
caravan_6.save!

caravan_7 = Caravan.new(
  brand: "Drap",
  year: 2022,
  model: "Big Truck",
  capacity: 10,
  gas_type: "Eléctrico",
  description: "Caravana con todas las comodidades de una autocaravana pero en un espacio más reducido. Se trata de un vehículo muy manejable para llegar a todos los rincones con toda tranquilidad. Dos son los puntos fuertes en su interior que la hacen destacar frente a la competencia, el nuevo cabin loft incrementa la movilidad y nos aporta mayor sensación de espacio y el baño dúplex, una solución única de baño de doble espacio.",
  user_id: 1,
  address: "Santa Cruz de la Sierra",
  latitude: -17.8057529,
  longitude: -63.1787717,
  day_price: 136
)

photo_7 = URI.open("http://eurocamping.pt/wp-content/uploads/2016/05/IMG_20160204_171730.jpg")
caravan_7.photo.attach(io: photo_7, filename: "Drap_7.png", content_type: "image/png")
caravan_7.save!

caravan_8 = Caravan.new(
  brand: " Volkswagen",
  year: 2020,
  model: "Camp Confort",
  capacity: 6,
  gas_type: "Gasolina",
  description: "Es un vehículo estupendo para disfrutar de la naturaleza, de nuestras playas, o fiestas populares, o simplemente para viajar en modo SLOW.Está muy cuidada, con todas las revisiones al día. Además en perfecto estado mecánico y sin deterioros en la chapa, ni en el equipamiento.",
  user_id: 2,
  address: "Santiago de Chile, Chile",
  latitude: -33.5081562,
  longitude: -70.5931697,
  day_price: 82
)

photo_8 = URI.open("https://i.blogs.es/5ea162/viajar-por-europa-en-autocaravana/original.jpg")
caravan_8.photo.attach(io: photo_8, filename: "Volkswagen_8.png", content_type: "image/png")
caravan_8.save!

caravan_9 = Caravan.new(
  brand: " Renault",
  year: 2018,
  model: "Travel King",
  capacity: 8,
  gas_type: "Gasolina",
  description: "Camper espectacular para ir con la familia, o para deportes, gracias a su garaje de gran volumen convertible.",
  user_id: 3,
  address: "Santiago de Chile, Chile",
  latitude: -33.5081562,
  longitude: -70.5931697,
  day_price: 97
)

photo_9 = URI.open("https://spotcar.es/wp-content/uploads/2021/02/caravana-autocaravana.jpg")
caravan_9.photo.attach(io: photo_9, filename: "Renault_9.png", content_type: "image/png")
caravan_9.save!

puts "Caravanas creadass"

reservations = [
  {
    user_id: 1,
    caravan_id: 2,
    start_date: "2023/06/08",
    finish_date: "2023/07/08",
    status: true,
    total_price: 20
  },
  {
    user_id: 2,
    caravan_id: 3,
    start_date: "2023/08/14",
    finish_date: "2023/09/10",
    status: false,
    total_price: 30
  },
  {
    user_id: 3,
    caravan_id: 1,
    start_date: "2023/04/15",
    finish_date: "2023/05/15",
    status: true,
    total_price: 40
  }
]

reservations.each do |r|
  Reservation.create!(r)

end
puts "Reservations creados"
