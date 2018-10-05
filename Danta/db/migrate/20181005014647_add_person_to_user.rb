class AddPersonToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :person, foreign_key: true
  end
end
