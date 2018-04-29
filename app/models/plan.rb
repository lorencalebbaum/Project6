class Plan < ApplicationRecord
    belongs_to(:user)
    belongs_to(:catalog)
    has_many :years
end
