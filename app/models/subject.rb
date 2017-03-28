class Subject < ApplicationRecord
  has_many :teachers, through: :teacher_classes

  def self.search(search)
    search ? where("name LIKE ?", "%#{search[:name]}%") : all
  end
  self.per_page = 10
end
