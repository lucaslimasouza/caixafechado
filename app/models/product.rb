class Product < ActiveRecord::Base

	validates_presence_of :code, :name, :cost, :price, :description, :quantity
end
