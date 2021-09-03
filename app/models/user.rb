class User < ApplicationRecord
  enum user_type: {
    user: 0,
    admin: 1
  }

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }

  has_secure_password

  def admin?
    user_type == "admin"
  end
end
