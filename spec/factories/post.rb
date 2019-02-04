FactoryBot.define do
  factory :post do
    content { Faker::TvShows::StrangerThings.quote }
    social_media { ['Facebook', 'Twitter'].sample }
    link { Faker::Internet.url }
    factory :governor_post do 
      association :postable, factory: :governor
    end
  end
end
