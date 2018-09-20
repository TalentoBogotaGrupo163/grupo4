class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
      t.references :inscriptions, foreign_key: true
      t.references :qualifications, foreign_key: true

      t.timestamps
    end
  end
end
