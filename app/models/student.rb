class Student < ApplicationRecord
  has_many :student_presentations
  has_many :presentations, through: :student_presentations
  has_many :presentation_scores
end
