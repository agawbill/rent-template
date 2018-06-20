class AddPictureToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :picture, :string
  end
end
