FactoryBot.define do
  factory :governor, class: CustomList::Governor do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    facebook_id { Faker::Internet.username }
    twitter_username { Faker::Twitter.screen_name }
  end
end