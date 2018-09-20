class Inscription < ApplicationRecord
  belongs_to :courses
  belongs_to :people
end
