class AddHouseNumberToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :houseNumber, :string
  end
end
