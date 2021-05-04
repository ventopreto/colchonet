class User < ApplicationRecord
  has_secure_password
  before_create :generate_token
  validates :email, :full_name, :location, presence: true
  validates :bio, length:{minimum: 30} , allow_blank: false
  validates :email, format: {with: /\A[^@]+@([^@\.]+\.)+[^@]+\Z/}, uniqueness: true

  def generate_token
      self.confirmation_token = SecureRandom.urlsafe_base64
  end
     
  def confirm!
    return if confirmed?

    self.confirmed_at = Time.current
    self.confirmation_token = ' '
    save!
  end
  
  def confirmed?
    confirmed_at.present?
  end
end
