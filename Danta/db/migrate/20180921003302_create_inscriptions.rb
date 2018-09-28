class CreateInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscriptions do |t|
      t.integer :attendant
      t.references :course, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
