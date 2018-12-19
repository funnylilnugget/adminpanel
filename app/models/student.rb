class Student < ApplicationRecord
  validates :first_name, :last_name, :age, :education, :hero_name, :quirk, presence: true
  belongs_to :cohort
end
