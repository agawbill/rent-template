class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table  :properties do |t|
      t.string    :title
      t.string    :kind
      t.string    :availability
      t.decimal   :price
      t.decimal   :lat
      t.decimal   :lng

      t.timestamps
    end
  end
end
