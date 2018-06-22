class AddZipcodeToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :zipcode, :string
  end
end
