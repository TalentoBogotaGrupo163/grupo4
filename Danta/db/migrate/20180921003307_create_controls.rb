class CreateControls < ActiveRecord::Migration[5.1]
  def change
    create_table :controls do |t|
      t.date :date
      t.boolean :assist
      t.references :inscription, foreign_key: true

      t.timestamps
    end
  end
end
