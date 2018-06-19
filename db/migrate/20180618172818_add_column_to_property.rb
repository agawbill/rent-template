class AddColumnToProperty < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :street, :string
    add_column :properties, :apt, :string
    add_column :properties, :city, :string
    add_column :properties, :state, :string
  end
end
