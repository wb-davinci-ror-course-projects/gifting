# Read about factories at https://github.com/thoughtbot/factory_girl
occasion_name = ['anniversary', 'birthday', 'graduation']
FactoryGirl.define do
  factory :occasion do
    type_of_occasion { occasion_name.shuffle[0] }
    day_of_occasion { Date.today + rand(6) }
    # gifter_id { FactoryGirl.create(:giftee).id }
    giftee_id { FactoryGirl.create(:giftee).id }
  end
end
