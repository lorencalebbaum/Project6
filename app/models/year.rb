class Year < ApplicationRecord
  belongs_to(:plan)
  has_many :terms
end
