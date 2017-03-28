class Student < ApplicationRecord
  belongs_to :class_room

  def self.search(search)
    search ? where("name LIKE ?", "%#{search[:name]}%") : all
  end
  self.per_page = 10
end
