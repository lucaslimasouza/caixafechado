class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :cost
      t.string :price
      t.string :quantity
      t.string :description

      t.timestamps
    end
  end
end
