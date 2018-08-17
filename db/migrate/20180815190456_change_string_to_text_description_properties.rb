class ChangeStringToTextDescriptionProperties < ActiveRecord::Migration[5.1]
  def change
    change_column :properties, :description, :text
  end
end
