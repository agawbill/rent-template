class CreateClaims < ActiveRecord::Migration[5.1]
  def change
    create_table :claims do |t|
      t.decimal :price
      t.string :status
      t.string :type_of_claim
      t.text :description
      t.integer :rent_id

      t.timestamps
    end
  end
end
