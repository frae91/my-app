# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Student.create(name:"Frae",degree:"CS",birthyear:1991)
# Student.create(name:"John",degree:"Business",birthyear:2000)
# Student.create(name:"Mary",degree:"CS",birthyear:1998)

# Book.create([
#     {title:"Book1", author:"Frae", genre:"Fiction"},
#     {title:"Dictionary", author:"Unknown", genre:"Non-Fiction"},
#     {title:"Some Book", author:"Some Author", genre:"Fiction"}
# ])

# Song.create([
#     {
#         title: "Song1",
#         artist: "Some Artist",
#         duration: 300,
#         album: "My Album"
#     },
#     {
#         title: "Another Song",
#         artist: "Frae",
#         duration: 350,
#         album: "Me"
#     }
# ])

# Person.create([
#     {
#         name: "Frae",
#         age:32
#     },
#     {
#         name: "Johnny",
#         age: 25
#     },
#     {
#         name: "Jill",
#         age:30
#     }
# ])
require 'faker'

# 10.times do
#     Book.create({
#         title: Faker::Book.title,
#         author: Faker::Book.author,
#         genre: Faker::Book.genre
#     })
# end

10.times do 
    Student.create({
        name: Faker::Name.name,
        degree: Faker::Job.field,
        birthyear: Faker::Number.digit
    })
end