class AddNameToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :firstName, :string
  end
end
