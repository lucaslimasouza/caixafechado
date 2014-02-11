class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.decimal :total
      t.decimal :change
      t.string :value_received

      t.timestamps
    end
  end
end
