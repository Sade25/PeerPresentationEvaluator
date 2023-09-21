class PresentationScore < ApplicationRecord
  belongs_to :presentation
  belongs_to :student
end
