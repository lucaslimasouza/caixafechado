# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale do
    total "9.99"
    change "9.99"
    value_received "MyString"
  end
end
