class AddCompanyIdToSale < ActiveRecord::Migration
  def change
    add_reference :sales, :company, index: true
  end
end
