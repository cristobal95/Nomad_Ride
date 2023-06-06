# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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

caravans = [
  {
    brand: "Ford",
    year: 2020,
    model: "Modelo 1",
    capacity: 4,
    gas_type: "Gasolina",
    description: "Descripción de la caravana 1.",
    user_id: 2
  },
  {
    brand: "Volvo",
    year: 2018,
    model: "Modelo 2",
    capacity: 6,
    gas_type: "Diésel",
    description: "Descripción de la caravana 2.",
    user_id: 1
  },
  {
    brand: "Ford",
    year: 2021,
    model: "Modelo 4",
    capacity: 8,
    gas_type: "Electric",
    description: "Descripción de la caravana 4.",
    user_id: 2
  },
  {
    brand: "Volvo",
    year: 2020,
    model: "Modelo 5",
    capacity: 4,
    gas_type: "Diésel",
    description: "Descripción de la caravana 5.",
    user_id: 3
  },
  {
    brand: "Nissan",
    year: 2020,
    model: "Modelo 6",
    capacity: 6,
    gas_type: "Gasolina",
    description: "Descripción de la caravana 6.",
    user_id: 2
  },
  {
    brand: "Renault",
    year: 2022,
    model: "Modelo 3",
    capacity: 8,
    gas_type: "Gasolina",
    description: "Descripción de la caravana 3.",
    user_id: 2
  }
]

caravans.each do |c|
  Caravan.create!(c)
end

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
