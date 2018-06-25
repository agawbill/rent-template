class AddLastnameToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :lastName, :string
  end
end
