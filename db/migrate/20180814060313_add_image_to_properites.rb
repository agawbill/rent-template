class AddImageToProperites < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :image, :string
  end
end
