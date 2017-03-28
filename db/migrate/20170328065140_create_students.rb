class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :code
      t.date :birthday
      t.integer :sex
      t.string :address
      t.references :class_room, foreign_key: true

      t.timestamps
    end
  end
end
