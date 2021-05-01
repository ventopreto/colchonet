class User < ApplicationRecord
  has_secure_password
  validates :email, :full_name, :location, presence: true
  validates :bio, length:{minimum: 30} , allow_blank: false
  validates :email, format: {with: /\A[^@]+@([^@\.]+\.)+[^@]+\Z/}, uniqueness: true
     
end
