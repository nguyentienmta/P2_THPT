class TeacherClass < ApplicationRecord
  belongs_to :teacher
  belongs_to :class_room
  belongs_to :subject

  def self.search(search)
    select("*").joins("
                      ")
  end
end
