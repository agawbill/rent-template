class CreateRents < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|

      t.decimal   :price
      t.string    :status
      t.datetime  :rent_date
      t.datetime  :devolution_date
      t.integer   :property_id
      t.integer   :user_id

      t.timestamps
    end
  end
end
