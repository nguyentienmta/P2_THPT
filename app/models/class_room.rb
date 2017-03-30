class ClassRoom < ApplicationRecord
  belongs_to :school_year
  has_many :teachers, through: :teacher_classes

  def self.search(search)
    search ? where("name LIKE ?", "%#{search[:name]}%") : all
  end
end
