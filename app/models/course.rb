class Course < ApplicationRecord
  validates :name, presence: true
  validates :class_hours, numericality: {greater_than: 0}, presence: true
    has_many :cohorts
end
