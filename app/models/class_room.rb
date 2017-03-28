class ClassRoom < ApplicationRecord
  belongs_to :school_year
  has_many :teachers, through: :teacher_classes
end
