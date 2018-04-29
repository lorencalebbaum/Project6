class Major < ApplicationRecord
    belongs_to(:catalogs)
    has_many :catagories
end
