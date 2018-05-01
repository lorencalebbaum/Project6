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

catalog1 = Catalog.new
catalog1.year = 2015
catalog1.save!


major1 = Major.new
major1.name = "Computer Science"
major1.catalog_id = catalog1.id
major1.save!

major2 = Major.new
major2.name = "Computer Engineering"
major2.catalog_id = catalog1.id
major2.save!

#give joe a couple of plans
# Plan.create(user_id: user1.id, name: "Plan1")
# Plan.create(user_id: user1.id, name: "Plan2")

plan1 = Plan.new
plan1.user_id = user1.id
plan1.name = "Plan1"
plan1.major_id = major1.id
plan1.catalog_id = catalog1.id
plan1.save!

plan2 = Plan.new
plan2.user_id = user1.id
plan2.major_id = major1.id
plan2.name = "Plan2"
plan2.catalog_id = catalog1.id
plan2.save

#create some Catalogs
#Catalog.create(year: 2015)
#add some catagories

category1 = Catagory.new
category1.major_id= major1.id
category1.name = "Core";
category1.save!

category2 = Catagory.new
category2.major_id= major1.id
category2.name = "Electives";
category2.save!

category3 = Catagory.new
category3.major_id= major1.id
category3.name = "Cognates";
category3.save!

category4 = Catagory.new
category4.major_id= major2.id
category4.name = "Core";
category4.save!

category5 = Catagory.new
category5.major_id= major2.id
category5.name = "Electives";
category5.save!

category6 = Catagory.new
category6.major_id= major2.id
category6.name = "Cognates";
category6.save!

year1 = Year.new
year1.plan_id = plan1.id
year1.year = 2015
year1.save!

year2 = Year.new
year2.plan_id = plan1.id
year2.year = 2016
year2.save!

year3 = Year.new
year3.plan_id = plan1.id
year3.year = 2017
year3.save!

year4 = Year.new
year4.plan_id = plan1.id
year4.year = 2018
year4.save!

#add some terms
term1 =Term.new
term1.year_id = year1.id
term1.semester = "Spring"
term1.save!

term2 = Term.new
term2.year_id = year1.id
term2.semester = "Fall"
term2.save!

term3 = Term.new
term3.year_id = year1.id
term3.semester = "Summer"
term3.save!

term4 = Term.new
term4.year_id = year2.id
term4.semester = "Spring"
term4.save!

term5 = Term.new 
term5.year_id = year2.id
term5.semester = "Fall"
term5.save!

term6 = Term.new 
term6.year_id = year2.id
term6.semester = "Summer"
term6.save!

term7 = Term.new
term7.year_id = year3.id
term7.semester = "Spring"
term7.save!

term8 = Term.new 
term8.year_id = year3.id
term8.semester = "Fall"
term8.save!

term9 = Term.new 
term9.year_id = year3.id
term9.semester = "Summer"
term9.save!

term10 = Term.new
term10.year_id = year4.id
term10.semester = "Spring"
term10.save!

term11 = Term.new 
term11.year_id = year4.id
term11.semester = "Fall"
term11.save!

term12 = Term.new 
term12.year_id = year4.id
term12.semester = "Summer"
term12.save!

#add some courses
course1 = Course.new
course1.name ="Intro to C++"
course1.designator = "CS-1210"
course1.description = "Hello..."
course1.credits = 3
course1.save!

course2 = Course.new 
course2.name = "Calculus I"
course2.designator = "Math-101"
course2.description = "I'm at my limit"
course2.credits = 5
course2.save!

course3 = Course.new
course3.name = "Physics I"
course3.designator = "PHYS-1250"
course3.description = "Forces";
course3.credits = 5
course3.save!

course4 = Course.new 
course4.name = "Circuits"
course4.designator = "ENGE-2210"
course4.description = "What a short class"
course4.credits = 3
course4.save!

course5 = Course.new
course5.name = "OOD with C++"
course5.designator = "CS-1220"
course5.description = "Seg Fault"
course5.credits = 3
course5.save!

course6 = Course.new
course6.name = "OS"
course6.designator = "CS-3320"
course6.description = "It works somehow"
course6.credits = 3
course6.save!

course7 = Course.new
course7.name = "Compiler"
course7.designator = "CS-3510"
course7.description = "Compiler is 'way cool'"
course7.credits = 3
course7.save!

TermCourse.create(term_id:term1.id, course_id: course1.id)
TermCourse.create(term_id:term1.id, course_id: course2.id)
TermCourse.create(term_id:term2.id, course_id: course3.id)
TermCourse.create(term_id:term2.id, course_id: course4.id)
TermCourse.create(term_id:term4.id, course_id: course5.id)
TermCourse.create(term_id:term5.id, course_id: course6.id)

CourseCatalog.create(catalog_id:catalog1.id, course_id: course1.id)
CourseCatalog.create(catalog_id:catalog1.id, course_id: course2.id)
CourseCatalog.create(catalog_id:catalog1.id, course_id: course3.id)
CourseCatalog.create(catalog_id:catalog1.id, course_id: course4.id)
CourseCatalog.create(catalog_id:catalog1.id, course_id: course5.id)
CourseCatalog.create(catalog_id:catalog1.id, course_id: course6.id)

CourseCatagory.create(catagory_id: category1.id, course_id: course1.id)
CourseCatagory.create(catagory_id: category3.id, course_id: course2.id)
CourseCatagory.create(catagory_id: category3.id, course_id: course3.id)
CourseCatagory.create(catagory_id: category2.id, course_id: course4.id)
CourseCatagory.create(catagory_id: category1.id, course_id: course5.id)
CourseCatagory.create(catagory_id: category1.id, course_id: course6.id)
CourseCatagory.create(catagory_id: category1.id, course_id: course7.id)