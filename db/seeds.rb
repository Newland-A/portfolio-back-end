# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Campground.create([
  {
    name: "Acadia National Park",
    image_url: "https://www.nps.gov/common/uploads/structured_data/3C7B45AE-1DD8-B71B-0B7EE131C7DFC2F5.jpg",
    description: "Acadia National Park protects the natural beauty of the highest rocky headlands along the Atlantic coastline of the United States, an abundance of habitats, and a rich cultural heritage. At 3.5 million visits a year, it's one of the top 10 most-visited national parks in the United States. Visitors enjoy 27 miles of historic motor roads, 158 miles of hiking trails, and 45 miles of carriage roads.",
    avg_score: 4,
    hiking: true,
    tent: true,
    hammocks: true,
    rv: true,
    price: 30.00
  },
  {
    name: "Big Delta State Historic Park",
    image_url: "",
    description: "Park interpretive guides give tours of the grounds and buildings. Brochures are also available for a self-guided tour of the park. Rika's Roadhouse Cafe and Gifts operated by Smiling Moose of Delta Junction is open daily 10 am to 4 pm, from May 15th through Labor Day. The Cafe serves homemade sandwiches, soups, pies, ice cream, and baked goods.",
    avg_score: 3,
    hiking: true,
    tent: true,
    hammocks: false,
    rv: true,
    price: 350.00
  },
  {
    name: "Cloudland Canyon State Park",
    image_url: "",
    description: "Cloudland Canyon State Park is located on the western edge of Lookout Mountain and is the part of the Cumberland Plateau. The developed section of the park is located between the two canyons of Bear Creek and Daniel Creek, just before they come together to form the larger Sitton's Gulch Creek. Two waterfalls cascade over layers of sandstone and shale into pools below, with their flow depending on recent rains.",
    avg_score: 5,
    hiking: true,
    tent: true,
    hammocks: false,
    rv: false,
    price: 25.00
  },
  {
    name: "Falls Lake State Recreational Park",
    image_url: "",
    description: "DAY-USE AREAS open and close at the posted gate hours during their operating season. ALL CAMPGROUNDS at Falls Lake provide 24-hour access for campers only when any campsites are reserved or occupied, only during each campground's operating season. Campers will be given the after-hours emergency phone number upon check-in, or may contact a camp host in the event of an emergency.

    All day visitors, including those with picnic shelter or community building reservations, will be charged the per-vehicle entrance fee. This fee is charged daily from Memorial Day through Labor Day, and on weekends in April, May, and September.",
    avg_score: 4,
    hiking: true,
    tent: true,
    hammocks: false,
    rv: true,
    price: 350.00
  }
])

20.times do
  Review.create([
    {
      title: Faker::Mountain.name,
      description: Faker::Quote.famous_last_words,
      score: rand(1..5),
      campground_id: rand(1..5)
    }
  ])    
end


10.times do
  User.create([
    {
      username: Faker::Internet.username(specifier: 5..8),
      password: "password",
      email: Faker::Internet.email
    }
  ])
end

#store relative img url in frontend public folder