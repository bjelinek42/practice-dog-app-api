# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

dog = Dog.new(name: "Howie", age: 4, breed: "Bichon Frise")
dog.save

dog = Dog.new(name: "Aspen", age: 8, breed: "Pitbull")
dog.save

dog = Dog.new(name: "Django", age: 5, breed: "Blue Pitbull")
dog.save

dog = Dog.new(name: "Rosie", age: 9, breed: "Re Pitbull")
dog.save
