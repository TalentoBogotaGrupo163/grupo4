class Course < ApplicationRecord
  belongs_to :locations
  belongs_to :entities
  belongs_to :people
end
