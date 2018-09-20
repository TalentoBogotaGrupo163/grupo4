class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :type_user
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
