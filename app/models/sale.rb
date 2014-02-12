class Sale < ActiveRecord::Base

	belongs_to :company
	has_and_belongs_to_many :products
end
