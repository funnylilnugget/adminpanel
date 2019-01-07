class Admin < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :user_name, presence: true
  validates_uniqueness_of :email, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6}
  has_secure_password
end
