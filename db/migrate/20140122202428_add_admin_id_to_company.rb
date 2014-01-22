class AddAdminIdToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :admin, index: true
  end
end
