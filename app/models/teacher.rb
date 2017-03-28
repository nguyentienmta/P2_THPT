class Teacher < ApplicationRecord
  belongs_to :certificate
  has_many :subjects, through: :teacher_classes
  has_many :class_rooms, through: :teacher_classes

  def self.search(search)
    search ? where("name LIKE ?", "%#{search[:name]}%") : all
  end
  self.per_page = 10
end
