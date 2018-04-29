class Catalog < ApplicationRecord
    has_many :course_catalogs
    has_many :courses, through: :course_catalogs
    has_many :majors
    has_many :plans
end
