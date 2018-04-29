class Major < ApplicationRecord
    belongs_to(:catalog)
    has_many :catagories
end
