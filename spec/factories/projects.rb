# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyText"
    start_date "2014-05-14 17:37:00"
    due_date "2014-05-14 17:37:00"
  end
end
