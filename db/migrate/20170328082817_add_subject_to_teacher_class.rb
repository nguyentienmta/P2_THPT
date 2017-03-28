class AddSubjectToTeacherClass < ActiveRecord::Migration[5.0]
  def change
    add_reference :teacher_classes, :subject, foreign_key: true
  end
end
