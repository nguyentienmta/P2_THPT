class CreateClassRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :class_rooms do |t|
      t.string :name
      t.string :code
      t.integer :maximum
      t.string :description
      t.references :school_year, foreign_key: true

      t.timestamps
    end
  end
end
