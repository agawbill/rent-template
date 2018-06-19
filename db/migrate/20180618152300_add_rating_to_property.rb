class AddRatingToProperty < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :rating, :integer
  end
end
