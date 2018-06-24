class AddLastNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lastName, :string
  end
end
