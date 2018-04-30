json.extract! plan, :id, :name, :catalog_id, :major_id

json.years plan.years do |year|
    json.year year.year

    json.terms year.terms do |term|
        json.semester term.semester
        json.year year.year

        json.courses term.term_courses do |term_course|
            json.name term_course.course.name
            json.designator term_course.course.designator
            json.description term_course.course.description
            json.credits term_course.course.credits
        end
    end
end
        
