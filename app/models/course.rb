class Course < ApplicationRecord
    has_many :term_courses
    has_many :terms, through: :term_courses
    has_many :course_catagories
    has_many :catagories, through: :course_catagories
    has_many :course_catalogs
    has_many :catalogs, through: :course_catalogs
end
