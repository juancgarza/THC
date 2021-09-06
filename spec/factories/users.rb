FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password {"foobar123"}
    password_confirmation {"foobar123"}
    
    trait :admin do
      user_type {"admin"}
    end
  end
end