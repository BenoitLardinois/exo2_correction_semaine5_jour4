# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Reste all date into DB!
Dog.destroy_all
Stroll.destroy_all
Dogsitters.destroy_all

City.create(name: "Bastogne")

dogsitter = Dogsitter.create!(name: "Ben", age: 27, city: City.all.sample)

dog = Dog.create(name: "Toutou", pedigree: ["Chiwawa", "Caniche", "Bichon Maltais", "Golden Retriever", "Labradaor", "Pitbull", "Bulldog"].sample, city: City.all.sample)

Stroll.create!(place: Faker::Address.full_address, date: Faker::Date.between(from: 2.days.ago, to: 1.year.after), dog: dog, dog_sitters: dogsitter)