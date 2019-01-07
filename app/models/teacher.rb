class Teacher < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :education, presence: true
  validates :hero_name, presence: true
  validates :quirk, presence: true
  validates :age, inclusion: {in: 1..150}
  validates :salary, numericality: {greater_than: 0}
  has_many :cohorts
  has_one_attached :avatar
end
