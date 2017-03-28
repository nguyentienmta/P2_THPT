class CreateSchoolYears < ActiveRecord::Migration[5.0]
  def change
    create_table :school_years do |t|
      t.string :name
      t.string :code
      t.integer :start_year
      t.integer :end_year
      t.string :description

      t.timestamps
    end
  end
end
