json.extract! course
json.course course.course do |currentCourse|
    json.name currentCourse.name
    json.designator currentCourse.designator
    json.discription currentCourse.discription
end
