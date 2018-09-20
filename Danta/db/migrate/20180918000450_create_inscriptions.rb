class CreateInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscriptions do |t|
      t.references :courses, foreign_key: true
      t.references :people, foreign_key: true
      t.integer :attendant

      t.timestamps
    end
  end
end
