class Teacher < ApplicationRecord
  belongs_to :certificate
  has_many :subjects, through: :teacher_classes
  has_many :class_rooms, through: :teacher_classes
end
