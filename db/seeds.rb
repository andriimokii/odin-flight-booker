# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flight.destroy_all
Airport.destroy_all

jfk = Airport.create(code: 'JFK')
sfo = Airport.create(code: 'SFO')
pit = Airport.create(code: 'PIT')

Flight.create(departure_airport: jfk, arrival_airport: sfo, duration: 120, start: Date.today)
Flight.create(departure_airport: jfk, arrival_airport: sfo, duration: 240, start: Date.today)
Flight.create(departure_airport: sfo, arrival_airport: pit, duration: 60, start: Date.tomorrow)
Flight.create(departure_airport: pit, arrival_airport: jfk, duration: 30, start: Date.yesterday)
