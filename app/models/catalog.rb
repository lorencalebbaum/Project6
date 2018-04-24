class Catalog < ApplicationRecord
    has_many :course_catalogs
    has_many :courses, through: :course_catalogs
end
