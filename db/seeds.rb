
[CustomList::Governor, CustomList::FederalAgency, NonCustomList::FederalLegislator].each do |list|
  category, name = list.to_s.split('::')
  List.create(name: name, category: category)

  10.times do
    l = list.create(
      first_name: Faker::Name.first_name,  
      last_name: Faker::Name.last_name, 
      facebook_id: Faker::Internet.username,
      twitter_username: Faker::Twitter.screen_name
    )
    if l.persisted?
      rand(1..10).times do
        l.posts.create(
          content: Faker::TvShows::StrangerThings.quote,
          social_media: ['Facebook', 'Twitter'].sample,
          link: Faker::Internet.url
        )
      end
    end
  end
end
