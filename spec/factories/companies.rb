# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :company do
		name 'DevapWeb'
		cnpj 123456678
		address 'Barão de Iguape' 
		number 23
		cep 0000000
		phone 000000012
  end

end
