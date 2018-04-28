# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new
user1.login = "joe"
user1.email = "joe@cedarville.edu"
user1.password = "password"
user1.password_confirmation = "password"
user1.save!

user2 = User.new
user2.login = "pete"
user2.email = "pete@cedarville.edu"
user2.password = "password"
user2.password_confirmation = "password"
user2.save!

#give joe a couple of plans
# Plan.create(user_id: user1.id, name: "Plan1")
# Plan.create(user_id: user1.id, name: "Plan2")

plan1 = Plan.new
plan1.user_id = user1.id
plan1.name = "Plan1"
plan1.save!

plan2 = Plan.new
plan2.user_id = user1.id
plan2.name = "Plan2"
plan2.save

#create some majors
major1 = Major.new
major1.name = "Computer Science"
major1.save!

major2 = Major.new
major2.name = "Computer Engineering"
major2.save!

#create some Catalogs
#Catalog.create(year: 2015)

catalog1 = Catalog.new
catalog1.year = 2015
catalog1.save!

#add some courses
Course.create(name: "Intro to C++", designator: "CS-1210", discription: "Hello...")
Course.create(name: "Calculus I", designator: "Math-101", discription: "I'm at my limit")
Course.create(name: "Physics I", designator: "PHYS-1250", discription: "Forces")
Course.create(name: "Circuits", designator: "ENGE-2210", discription: "What a short class")
Course.create(name: "OOD with C++", designator: "CS-1220", discription: "Seg Fault")
Course.create(name: "OS", designator: "CS-3320", discription: "It works somehow")

#add some catagories
Catagory.create(major_id: major1.id, catalog_id: catalog1.id, name: "Core")
Catagory.create(major_id: major1.id, catalog_id: catalog1.id, name: "Electives")
Catagory.create(major_id: major1.id, catalog_id: catalog1.id, name: "Cognates")

Catagory.create(major_id: major2.id, catalog_id: catalog1.id, name: "Core")
Catagory.create(major_id: major2.id, catalog_id: catalog1.id, name: "Electives")
Catagory.create(major_id: major2.id, catalog_id: catalog1.id, name: "Cognates")

#add some terms
Term.create(plan_id: plan1.id, semester: "Spring")
Term.create(plan_id: plan1.id, semester: "Fall")
Term.create(plan_id: plan1.id, semester: "Summer")

Term.create(plan_id: plan1.id, semester: "Spring")
Term.create(plan_id: plan1.id, semester: "Fall")
Term.create(plan_id: plan1.id, semester: "Summer")

Term.create(plan_id: plan1.id, semester: "Spring")
Term.create(plan_id: plan1.id, semester: "Fall")
Term.create(plan_id: plan1.id, semester: "Summer")

Term.create(plan_id: plan1.id, semester: "Spring")
Term.create(plan_id: plan1.id, semester: "Fall")
Term.create(plan_id: plan1.id, semester: "Summer")

#create some years
Year.create(plan_id: plan1.id, year: 2015)
Year.create(plan_id: plan1.id, year: 2016)
Year.create(plan_id: plan1.id, year: 2017)
Year.create(plan_id: plan1.id, year: 2018)