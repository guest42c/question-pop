FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "#{n}@dominio.com" }
    password "secret"
  end
end
