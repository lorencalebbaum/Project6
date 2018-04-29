class Catagory < ApplicationRecord
  belongs_to(:major)
  has_many :courses, through: :course_catagories
end
