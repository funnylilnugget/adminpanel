class Teacher < ApplicationRecord
  validates :first_name, :last_name, :education, :hero_name, :quirk, presence: true
  validates :age, inclusion: {in: 1..150}
  validates :salary, numericality: {other_than: 0}
  belongs_to :cohort, optional: true
end
