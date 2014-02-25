# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :product do
		code "12344567"
		name 'Bala' 
		cost 0.05 
		price 10.10
		description 'Morango' 
		quantity 100
		association :company
  end

end
