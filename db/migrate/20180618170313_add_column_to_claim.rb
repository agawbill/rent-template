class AddColumnToClaim < ActiveRecord::Migration[5.1]
  def change
    add_column :claims, :admin_id, :integer
  end
end
