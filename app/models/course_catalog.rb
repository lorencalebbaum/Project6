class CourseCatalog < ApplicationRecord
  belongs_to :courses
  belongs_to :catalogs
end
