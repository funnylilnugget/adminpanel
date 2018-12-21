class Course < ApplicationRecord
  validates :name, :class_hours, presence: true
  belongs_to :cohort, optional: true
end
