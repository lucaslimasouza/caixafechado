class Company < ActiveRecord::Base

	belongs_to :admin
	has_many :products

	validates_presence_of :name, :cnpj, :address, :number, :cep, :phone
	validates_numericality_of :number, :cep, :cnpj
end
