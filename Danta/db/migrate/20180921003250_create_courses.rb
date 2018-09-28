class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.date :initial_date
      t.date :final_date
      t.integer :cost
      t.references :location, foreign_key: true
      t.references :entity, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
