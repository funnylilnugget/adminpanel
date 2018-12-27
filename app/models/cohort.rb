class Cohort < ApplicationRecord
  validates :name, :start_date, :end_date, presence: true
  has_and_belongs_to_many :students
  belongs_to :teacher
 belongs_to :course
end
