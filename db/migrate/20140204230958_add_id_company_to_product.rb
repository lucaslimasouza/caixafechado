class AddIdCompanyToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :company, index: true
  end
end
