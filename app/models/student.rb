class Student < ApplicationRecord
  validates :first_name, :last_name, :age, :education, :hero_name, :quirk, presence: true
  has_and_belongs_to_many :cohorts
end
