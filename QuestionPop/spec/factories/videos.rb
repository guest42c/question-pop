FactoryGirl.define do

  factory :video do
    sequence(:url) { |n| "http://www.youtube.com/watch?v=#{n}" }
    sequence(:title) { |n| "Title #{n}" }
    association :user

    factory :youtube_video do
      url "http://www.youtube.com/watch?v=WNEl3dzvZMA"
      title "Reconhecendo numeros primos"
    end
  end
end
