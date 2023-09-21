class Presentation < ApplicationRecord
  has_many :student_presentations
  has_many :students, through: :student_presentations
  has_many :presentation_scores
end
