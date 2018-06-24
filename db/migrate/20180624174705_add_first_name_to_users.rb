class AddFirstNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :firstName, :string
  end
end
