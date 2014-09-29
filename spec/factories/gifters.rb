# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gifter do
    name 'MyString'
    password 'MyString'
    password_confirmation 'MyString'
  end
end
