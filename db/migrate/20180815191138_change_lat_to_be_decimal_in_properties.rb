class ChangeLatToBeDecimalInProperties < ActiveRecord::Migration[5.1]
  def change
    change_column :properties, :lat, :decimal, :precision=> 60, :scale=>30
  end
end
