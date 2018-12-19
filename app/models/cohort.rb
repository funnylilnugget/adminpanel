class Cohort < ApplicationRecord
  validates :name, :start_date, :end_date, presence: true
  has_many :students
  has_one :teacher
  has_one :course
end
