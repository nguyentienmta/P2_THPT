class CreateTeacherClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_classes do |t|
      t.references :teacher, foreign_key: true
      t.references :class_room, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
