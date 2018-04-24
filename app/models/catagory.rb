class Catagory < ApplicationRecord
  belongs_to :majors
  belongs_to :catalogs
  has_many :course_catagories
  has_many :courses, through: :course_catagories
end
