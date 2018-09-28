class Course < ApplicationRecord
  belongs_to :location
  belongs_to :entity
  belongs_to :person
end
