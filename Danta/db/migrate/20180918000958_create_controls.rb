class CreateControls < ActiveRecord::Migration[5.1]
  def change
    create_table :controls do |t|
      t.references :inscriptions, foreign_key: true
      t.date :date
      t.boolean :assist

      t.timestamps
    end
  end
end
