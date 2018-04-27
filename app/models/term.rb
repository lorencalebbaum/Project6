class Term < ApplicationRecord
  belongs_to(:year)
  has_many :courses, through: :term_courses
end
