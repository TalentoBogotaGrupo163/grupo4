class CreateEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :entities do |t|
      t.string :identification
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.references :locations, foreign_key: true

      t.timestamps
    end
  end
end
