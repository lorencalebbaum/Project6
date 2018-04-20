class Course < ApplicationRecord
    has_many :term_courses
    has_many :courses, through: :term_courses
end
