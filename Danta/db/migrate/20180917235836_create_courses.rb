class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.date :initial_date
      t.date :final_date
      t.integer :cost
      t.references :locations, foreign_key: true
      t.references :entities, foreign_key: true
      t.references :people, foreign_key: true

      t.timestamps
    end
  end
end
