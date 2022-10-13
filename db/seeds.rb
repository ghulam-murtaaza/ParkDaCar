# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

virginia_airport = Facility.create(name: 'Test Airport', address: 'Virginia')
virginia_airport.parking_spots.create(name: 'A1')
virginia_airport.parking_spots.create(name: 'A2')
virginia_airport.parking_spots.create(name: 'A3')
virginia_airport.parking_spots.create(name: 'B1')
virginia_airport.parking_spots.create(name: 'B2')
virginia_airport.parking_spots.create(name: 'B3')
