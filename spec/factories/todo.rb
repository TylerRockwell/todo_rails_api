FactoryGirl.define do
  factory :todo, class: 'Todo' do
    title         'Write a test'
    is_completed  false
  end
end
