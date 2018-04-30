json.extract! major, :id, :name

json.categories major.catagories do |category|
    json.category category.name
    json.courses category.course_catagory do |category_course|
        json.name category_course.course.name
        json.designator category_course.course.designator
        json.description category_course.course.description
        json.credits category_course.course.credits

    end
end

