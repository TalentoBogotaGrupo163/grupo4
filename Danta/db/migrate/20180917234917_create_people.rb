class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :identification
      t.string :name
      t.string :address
      t.string :phone
      t.integer :age
      t.string :curriculum_vitae

      t.timestamps
    end
  end
end
