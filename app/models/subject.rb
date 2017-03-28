class Subject < ApplicationRecord
  has_many :teachers, through: :teacher_classes
end
