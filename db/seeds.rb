# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email:"abc@gmail.com",password:"password",profile_attributes:{ first_name:  "Boppy", last_name: 'james',bio: "I am not a phographer"} ) 
User.create!(email:"xyz@gmail.com",password:"password",profile_attributes:{ first_name:  "Boppy", last_name: 'james',bio: "I am a phographer",photographer:true}) 