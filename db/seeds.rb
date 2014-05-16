# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = User.create(first_name: "Anna", last_name: "Jones", email: "anna@ga.com", title: "project manager", password: "qwerty", password_confirmation: "qwerty")
p2 = User.create(first_name: "Bob", last_name: "Smith", email: "Bob@ga.com", title: "sales", password: "qwerty", password_confirmation: "qwerty")
p3 = User.create(first_name: "Charlie", last_name: "Davis", email: "charlie@ga.com", title: "installer", password: "qwerty", password_confirmation: "qwerty")
p4 = User.create(first_name: "David", last_name: "Sands", email: "david@ga.com", title: "client", password: "qwerty", password_confirmation: "qwerty")
p5 = User.create(first_name: "Silvia", last_name: "Young", email: "Silvia@ga.com", title: "service", password: "qwerty", password_confirmation: "qwerty")


s1 = Surkle.create(description: "Discussing the auditorium", location: "UPenn")
s2 = Surkle.create(description: "This is the second one", location: "UA")
s3 = Surkle.create(description: "Discuss the third", location: "UW")
s4 = Surkle.create(description: "And the fourth", location: "UCal")
s5 = Surkle.create(description: "Five", location: "UConn")
s6 = Surkle.create(description: "Six", location: "UMass")

proj1 = Project.create(name: "Moker", description: "The flaghip location")
proj1 = Project.create(name: "GA", description: "The new factory")
proj1 = Project.create(name: "NYU", description: "Student Union Refresh")
proj1 = Project.create(name: "Tyco", description: "Advanced Operations Center")
proj1 = Project.create(name: "DARPA", description: "Nanotech lab")


prod1 = Product.create(name: "minidome", description: "Indoor camera", price: 100)
prod2 = Product.create(name: "minidome", description: "Panoramic camera", price: 200)
prod3 = Product.create(name: "minidome", description: "Outdoor camera", price: 300)
prod4 = Product.create(name: "minidome", description: "Nightvision camera", price: 400)



# icon1 = Icon.create(name: "camera", image: )