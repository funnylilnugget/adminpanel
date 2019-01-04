class Admin < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_name, presence: true
  validates :email, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6}
  has_secure_password
end
