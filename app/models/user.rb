class User < ApplicationRecord
  validates :full_name, :email, :location, :password, :password_confirmation, :bio, presence: true
  validates :password, confirmation: true
end
