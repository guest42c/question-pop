# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    type "numerical_answer"
    target "questiondiv"
    description "this is the question description?"
    start 1.0
    stop 1.5
    association :video
  end
end
