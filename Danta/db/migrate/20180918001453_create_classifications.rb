class CreateClassifications < ActiveRecord::Migration[5.1]
  def change
    create_table :classifications do |t|
      t.string :description
      t.integer :type

      t.timestamps
    end
  end
end
