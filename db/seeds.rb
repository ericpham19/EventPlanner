# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

BookingType.destroy_all
BookingType.create!([{
    category: "Fitness", location: "Gym", description:"Personal training session with an instructor", user_id: 1},{category:"Medical", location: "Hospital", description:"Private consultation with a doctor", user_id: "1"},{category: "Education", location: "Tutoring Centre", description:"Small Group Tutoring", user_id: "1"} , {category: "Entertainment", location: "Cinema", description: "Watching a movie with friends", user_id: "1"}])