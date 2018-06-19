class AddColumnToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :admin_id, :integer
  end
end
