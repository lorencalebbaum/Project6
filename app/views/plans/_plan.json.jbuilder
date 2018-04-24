json.extract! plan, :id, :name

json.year plan.year do |year|
    json.year year.year

    json.terms year.terms do |terms|

        json.semester term.semester

        json.courses term.term_courses do |termCourses|
            json.name termCourses.courses.name
            json.designator termCourses.courses.designator
            json.discription termCourses.courses.discription
        end
    end
end
        
        
