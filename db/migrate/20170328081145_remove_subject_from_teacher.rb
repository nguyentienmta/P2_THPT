class RemoveSubjectFromTeacher < ActiveRecord::Migration[5.0]
  def change
    remove_reference :teachers, :subject, foreign_key: true
  end
end
