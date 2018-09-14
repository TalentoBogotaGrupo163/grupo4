class User < ApplicationRecord
  belongs_to :city

  validates :email, presence: {message:"Es necesario tener un correo"}
end
