# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_product do
    project nil
    product nil
    quantity 1
    subtotal 1
  end
end
