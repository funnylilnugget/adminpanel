class Teacher < ApplicationRecord
  validates :first_name, :last_name, :education, :hero_name, :quirk, presence: true
  validates :age, inclusion: {in: 1..150}
  validates :salary, numericality: {greater_than: 0}
  has_many :cohorts
end
