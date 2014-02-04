class Product < ActiveRecord::Base

	belongs_to :company

	validates_presence_of :code, :name, :cost, :price, :description, :quantity
	validates_numericality_of :code, :cost, :price, :quantity
end
