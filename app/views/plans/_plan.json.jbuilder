json.extract! plan, :id, :name

json.years plan.years do |year|
    json.year year.year

    json.terms year.terms do |term|
        json.semester term.semester
        json.year year.year

        print term.inspect

        json.courses term.catalog_courses do |catalogCourse|
            json.name catalogCourse.course.name
            json.designator catalogCourse.course.designator
            json.credits catalogCourse.course.credits
        end
    end
end
        
