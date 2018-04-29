json.extract! catalog, :id

    json.courses catalog.catalog_courses do |catalog_course|
        json.name catalog_course.course.name
        json.designator catalog_course.course.designator
        json.description catalog_course.course.description
        json.credits catalog_course.course.credits
    end
