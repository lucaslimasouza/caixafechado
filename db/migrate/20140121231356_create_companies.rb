class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :cnpj
      t.string :phone
      t.string :address
      t.string :number
      t.string :cep

      t.timestamps
    end
  end
end
