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

floor_plan = "//upload.wikimedia.org/wikipedia/commons/thumb/b/b6/PSM_V79_D623_First_floor_plan_of_the_zoological_lab_at_the_u_of_pennsylvania.png/800px-PSM_V79_D623_First_floor_plan_of_the_zoological_lab_at_the_u_of_pennsylvania.png"
s1 = Surkle.create(floorplan: floor_plan, description: "Discussing the auditorium", location: "UPenn")
s2 = Surkle.create(floorplan: floor_plan, description: "This is the second one", location: "UA")
s3 = Surkle.create(floorplan: floor_plan, description: "Discuss the third", location: "UW")
s4 = Surkle.create(floorplan: floor_plan, description: "And the fourth", location: "UCal")
s5 = Surkle.create(floorplan: floor_plan, description: "Five", location: "UConn")
s6 = Surkle.create(floorplan: floor_plan, description: "Six", location: "UMass")

camera= "http://www.euklis.it/upload/product_images_750/1141d5676fbd51bf1bcdbea9b308d4b1_klislite90hdosd.jpg"
prod1 = Product.create(name: "minidome", description: "Indoor camera", price: 100, image: camera)
prod2 = Product.create(name: "minidome", description: "Panoramic camera", price: 200, image: camera)
prod3 = Product.create(name: "minidome", description: "Outdoor camera", price: 300, image: camera)
prod4 = Product.create(name: "minidome", description: "Nightvision camera", price: 400, image: camera)

# icon1 = Icon.create(name: "camera", image: )