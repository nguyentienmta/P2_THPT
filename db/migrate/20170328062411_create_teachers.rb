class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :code
      t.date :birthday
      t.string :phone
      t.string :address
      t.string :start_date
      t.boolean :isHeadMaster
      t.references :subject, foreign_key: true
      t.references :certificate, foreign_key: true

      t.timestamps
    end
  end
end
