class ChangeLngToBeDecimalInProperties < ActiveRecord::Migration[5.1]
  def change
    change_column :properties, :lng, :decimal, :precision=> 60, :scale=>30
  end
end
