class Product < ActiveRecord::Base

	belongs_to :company
	has_and_belongs_to_many :sales

	validates_presence_of :code, :name, :cost, :price, :description, :quantity
	validates_numericality_of :code, :cost, :price, :quantity

	scope :from, -> company { where(company: company) }
end
