FactoryGirl.define do
  factory :todo, class: 'Todo' do
    title         Faker::Company.bs
    is_completed  [true, false].sample
  end
end
