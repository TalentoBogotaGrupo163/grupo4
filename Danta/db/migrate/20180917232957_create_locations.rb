class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :zone
      t.string :neighborhood
      t.string :municipality
      t.string :department

      t.timestamps
    end
  end
end
