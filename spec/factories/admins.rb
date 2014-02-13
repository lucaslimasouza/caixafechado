# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin do
  	email "teste@mail.com"
  	password 12345678
  	password_confirmation 12345678
  	association :company
  end
end
