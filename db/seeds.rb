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
Plan.create(user_id: user1.id, name: "Plan1")
Plan.create(user_id: user1.id, name: "Plan2")

#create some majors
Major.create(name: "Computer Science")
Major.create(name: "Mechanical Engineering")

#create some Catalogs
Catalog.create(year: 2015)

#add some courses
Course.create(name: "Intro to C++", designator: "CS-1210", discription: "Hello...")
Course.create(name: "Calculus I", designator: "Math-101", discription: "I'm at my limit")
Course.create(name: "Physics I", designator: "PHYS-1250", discription: "Forces")
Course.create(name: "Circuits", designator: "ENGE-2210", discription: "What a short class")
Course.create(name: "OOD with C++", designator: "CS-1220", discription: "Seg Fault")
Course.create(name: "OS", designator: "CS-3320", discription: "It works somehow")

#add some catagories
Catagory.create(majors_id: 1, catalogs_id: 1, name: "Core")
Catagory.create(majors_id: 1, catalogs_id: 1, name: "Electives")
Catagory.create(majors_id: 1, catalogs_id: 1, name: "Cognates")

Catagory.create(majors_id: 2, catalogs_id: 1, name: "Core")
Catagory.create(majors_id: 2, catalogs_id: 1, name: "Electives")
Catagory.create(majors_id: 2, catalogs_id: 1, name: "Cognates")

#add some terms
Term.create(plan_id: 1, semester: "Spring", year: 2015)
Term.create(plan_id: 1, semester: "Fall", year: 2015)
Term.create(plan_id: 1, semester: "Summer", year: 2015)

Term.create(plan_id: 1, semester: "Spring", year: 2016)
Term.create(plan_id: 1, semester: "Fall", year: 2016)
Term.create(plan_id: 1, semester: "Summer", year: 2016)

Term.create(plan_id: 1, semester: "Spring", year: 2017)
Term.create(plan_id: 1, semester: "Fall", year: 2017)
Term.create(plan_id: 1, semester: "Summer", year: 2017)

Term.create(plan_id: 1, semester: "Spring", year: 2018)
Term.create(plan_id: 1, semester: "Fall", year: 2018)
Term.create(plan_id: 1, semester: "Summer", year: 2018)

#create some years
Year.create(plan_id: 1, year: 2015)
Year.create(plan_id: 1, year: 2016)
Year.create(plan_id: 1, year: 2017)
Year.create(plan_id: 1, year: 2018)