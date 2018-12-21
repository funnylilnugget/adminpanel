class Teacher < ApplicationRecord
  validates :first_name, :last_name, :age, :salary, :education, :hero_name, :quirk, presence: true
  belongs_to :cohort, optional: true
end
