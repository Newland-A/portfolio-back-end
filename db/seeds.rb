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
  },
  {
    name: "Blanco State Park",
    image_url: "",
    description: "This small park hugs a one-mile stretch of the river. On the water, you can swim, fish, paddle or boat. On land, you can picnic, hike, camp, watch for wildlife, and geocache. Reserve the CCC-built picnic area or pavilion for your next group gathering. Take a virtual tour with our Interactive Trails Map.
    
    Swimming: 
    Swim anywhere along the river. Small children will enjoy the shallow wading pool next to Falls Dam. Rent tubes at the park store from 9 a.m. to 2 p.m.; return tubes by 4 p.m.

    Boating:
    Bring your canoe, kayak or boat (electric motors only). Or rent a single or double kayak or tube at the park store to use in the park (available seasonally; $20 credit card deposit required). Rental hours are 9 a.m. to 2 p.m.; return kayaks by 4 p.m.",
    avg_score: 3,
    hiking: true,
    tent: true,
    hammocks: false,
    rv: true,
    price: 5.00
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

Post.create([
  {title: 'The Decision to become a Software Engineer',
  content: 'Hello everyone,

  I have always been interested in finding out how things work and if they dont finding a way to make them work. I wanted to share a little about my journey as to how I discovered, I have a passion for code.
  
  My journey into the world of tech started at a very young age. I just didn\'t realize it till much later. I used to love taking apart the few electronics that we had in the home. To figure out how they worked and put them back together. My parents weren’t always to happy about it, for example when I decided to take the cable box appart. The day after it was installed then run every program that I could just to see what it does and see how I could change it at 8 years old.
  
  I have an appreciation for art. Art pieces are like puzzles that your trying to solve to grab someones attention. With each piece it can send a different message or make someone think in many different ways.
  
  I continued on a when I got to highschool I took every computer class that was available along with every art class. I went through high school in about 3 years. After graduation, I got married to my wonderful husband. Then, went to college for my Graphic Design degree. That\'s where the initial introduction to code began.
  
  My time in college. I went through several art classes and learning how to design and code websites from the front-end. Writing code to make something work is like sitting down and solving a sudoku puzzle or a rubix cube. Every turn or every number creates a different outcome. Figuring out the pieces that make it work the way that it is intended. Every piece solved gets you one step closer to success. I started by learning with dreamweaver. It was a great introduction piece for its time. I found out that I enjoyed coding when I graduated and worked as an intern for a web developer design the layouts and I was more interest in learning what they were doing to make my designs fuctionable. Over the next year, I learned many different techniques for how I could help them. I started learning how to make my designs with code instead of the design. Knowing both was wonderful cause to design the way I wanted it to look gave me a great start for what pieces of code I needed to create.
  
  Then, thats where everything changed. I had started my family. I had my daughter which changed everything for the first couple of years. I was still interested in all the new tech and wanting to know how it works. All my time went to teaching my daughter. When she turned 5 my son was born. Now, that my daughter is 8 and my son is almost 4. I have more time during the day to focus more time on my passions and my children join me in the learning process. My daughter has watched me spend several hours a day coding and has developed an interest in learning how to code. She is interested in learning how to build her own websites and gaming apps. I\'m finally to a point that my children are able to develop their own interest and grow with me.
  
  I am and will always be a wife and mother first. Now, they can be apart of what I do and we can have more freedom within our days for all of us to achieve our own goals. I love being able to teach my children how to work with their hands and their minds.
  
  I knew I wanted to do something with code and design. After, many years of research and learning on my own. I discovered bootcamps. I don\'t have the flexibility of going to a physical campus. To be able to work from home and still take care of my children and teach them in the process is apart of what drives my success.
  
  When I started applying to bootcamps. I was accepted by several bootcamps. It was a hard decision because I wanted to have the flexibility to work my hours on my courses and still have a community to work with on projects. I have spent between 8 to 12 hrs a day learning to code and catching up on how technology has changed in the last 8 years. While I have been focused on raising my family. I fully homeschool my children along with wanting to learn myself and progress my knowledge everyday. I wanted to choose the profession that felt natural and find something I enjoy I didn\'t want to end up doing something that I dreaded going to work everyday. With being a software engineer it is something that your always learning something new everyday. My journey od learning something new and progressing doesn\'t end when I finish bootcamp. My life revolves around learning and teaching something new all the time. With the more you know the better you\'ll be able to solve the puzzle. I finished my prepwork for 5 different bootcamps in about 6 weeks.
  
  After, I applied to multiple different schools. I started doing the pre-work spending a week rotating through the different courses. It gave me a good insight into how the curriculum was is going to be presented. It gave me a good starting point before the first round of interviews began. I knew what the school had to offer and if the bootcamp was going to be a good fit for my learning style and my lifestyle. I made the decision that I was going to complete all the prework for the bootcamps. Starting out there would be different pieces in the different courses, that would help me to understand the different pieces of the puzzle. Looking at it in different ways to find my groove for understanding.
  
  I finished my prepwork for Flatiron on July 17th. My cohort doesn\'t start til August 17th. I have a whole month to wait for it to start. During this time I have created my first website of being back in the game. I\'m currently working on my own blog post. I have still spent 6 to 8 hrs a day studying, practicing code and finding the answers to my puzzle.
  
  So, that\'s brings my journey to now. A little insight into where I want to be 10 years from now. Is in a great company being able to work from home and work where ever I am in the world. Have the flexibility of being on the water, in the mountains, or just a long road trip. While earning a respectable income to have financial and life freedom. I have the drive to succeed and accomplish the goals for the company and myself. I am willing to put in the long hours that is required to learn as much as I can during these beginning stages. WIth everyday my knowledge will grow and the things I am Having to think about now, will be second nature as long as I keep going and stay driven.
  
  This is my first blog post I am open to any advice, improvements and suggestions. Thank you for taking the time to read a bit about my journey. I look forward to learning as much as possible and forever furthering my career by continuing to always keep learning.
  '
},
  {
    title: 'HOW TO SOLVE A LAB IN FIRST MILE?!',
    content: 'This is a challenge. It is different for everyone. The way I go about solving labs is creating notes in the file of what the lab is asking me to do, as I read through it the first time. As I am trying to translate that into code the computer can understand. I have an idea of what it\'s asking me to do. I can then reference the readme file, as I am working the code.

    Once, I have a generic layout of what it is asking me to do. I run learn with every addition to the code. Making sure that the tests are spelled correctly even if it has errors and a letter isn\'t capitalized but you know it should be. Because, the tests for learn are extremely finicky. They will fail if you miss a period. So, if it says a method is supposed to return
    <code>
    "Hello #{name}. How are you doing in class today?"
    </code>
    and you put
    <code>
    "Hello #{name} How are you doing in class today"
    <code>
    The test will fail because you don\'t have a period after #{name} && ? after today.
    
    An advanced note: If you have a long string and you want to break it up into multiple lines. I suggest using string name = <<END this will create a string until the word END is seen again in the code.
    <code>
    Example: poem = «END
    
    \t The lovely world with logic so firmly planted cannot discern \n the needs of love nor comprehend passion from intuition and require an explanation \n\t\twhere there is none. END“This word can be anything”
    <code>
    This is an example from the book Ruby The Hard Way. Lesson 24.rb. I highly suggest reading this book and doing some or all of the lessons if you find your self looking for some extra practice.
    
    To distinguish the ‘here doc operator\' an arbitrary String delimiter has to immediately follow the \'«\'. Everything inbetween that initial delimiter and the second occurrence of that same delimiter will be part of the final string. It is also possible to use \'«-\', the difference is that using the latter will ignore any leading or trailing whitespace.
    
    In the poem string it also uses \n, \t. \n creates a linebreak. \t tabs in the line.
    
    The following commands are used in the terminal to test and submit your labs. learn is used to test the labs. Make sure to save your file before running learn. This can be done using command S. Once you have all labs passing you would type the learn submit command into the terminal. If you want to test the file without submitting it. I recommend saving the file. Going into the directory where the file is located using cd - change directory. pwd - print working directory, and ls - list the files in the directory.
    
    pwd to find out what directory your currently in.
    
    Then, go to the directory that contains your file.
    
    #Where you keep your lab files
    
    <code>cd Directory\ folder/<code>
    
    If you try this and get an error message saying no file found. Just cd back to the main directory.
    
    #Use this to print a list of files in the directory
    
    <code>ls</code>
    
    #The list of files in that directory
    
    filename.rb filename.rb and so on…
    
    #Once, you find the file you want to run in the directory. Run this in the terminal
    
    ruby filename.rb
    
    Then the file will run in the terminal. If you have properly setup the file. If not take it one step at a time and work through the error messages they are their to help you. Become one with them. I know they seem overwhelming, but they are your friend. After, you have spent several minutes on it and tried to work through it on your own. You have researched, went through your notes, used google to its fullest and you still cant seem to get the tests to pass. ASK A QUESTION. In the slack community. on the learn.co page. Reach out. Someone is willing and able to help. Find a partner and start a Zoom chat. Working with others is a great way to talk it out. Explaining it to someone helps to help you understand it better.
    
    Well I hope you found something useful in this blog. I will be updateing it as I go through the course. Good luck to everyone. Have fun, the challenge is real but totally do able. Don\'t forget NO question is a dumb question! We all look at things differently and sometimes we just need to work together.
    '
  },
  {
    title: 'My journey of creating my first CLI app using an API!',
    content: 'Hello, I am writing this blog to talk about some of the struggles and some of the celebration moments of creating your first CLI app.

    I am doing my project on OuterSpace. It is very limited and very versatile at the same time. There is so much information. Trying to find what to include? and what to exclude? has been a challenge. My API is returning a massive amount of data and I’ve had trouble finding a solution that limits it without removing planets from the apps list.
    
    This has been a fun experience so far of truely seeing how all of the pieces work together. I now know how to import an API and use the information that is given.
    
    Why I choose to do a project on the Solar System! My daughter and I have always stay-up late just to track the moon and look at the stars her favorite constellation is O\'rians Belt. I am going to try and include information on the different constellations as well. Scraping websites and using an API seems to be my best bet to get all the information that I want to include. There isn\'t an API that include all known information about OuterSpace. Maybe, I will create one. I have learned a lot even in just the beginning stages. There is so much more to learn. It has been a learning experience for my daughter as well. She knows that I am doing a project on the Solar System and is doing research to help me get information about the different thing out there.
    
    RestClient is a simple, Python + wxWidgets Desktop application for talking to RESTful web services. It is designed to fill a gap in existing offerings by offering support for GET/POST/PUT/DELETE, making it a useful tool when exploring RESTful web services which use a wider range of HTTP verbs.
    
    I found a restful API and used the restclient gem to be able to use JSON and retrieve my data from the API.
    
    I started out by making my retrieve method
    
     def self.retrieve_planets # response = RestClient.get(‘https://api.le-systeme-solaire.net/rest/bodies/’) response = RestClient.get(‘https://api.le-systeme-solaire.net/rest/bodies/{id}’) planet_hash = JSON.parse(response.body, symbolize_names:true) planets_array = planet_hash[:bodies]#[:name]
    
    planets_info = planets_array.collect { |planet| Planets.new(planet)}
    
    #binding.pry   end
    
    I used binding.pry to test my app as I was building it to see if each piece was working the way I wanted it too.
    
    Binding.pry needs to be required in your run file and then you can place a binding where needed.
    
    I then moved on to creating my planets class that holds my planets. Next, I created my details class that holds the details of all the planets. 
    
    My hurdle is finding a way to limit the output of my API in the CLI.
    
    From here this is where the journey starts the challenges.
    
    I started out doing my project on the solar system. I very quickly learned that a API for what I was wanting to do was not existent. It would require several API\'s or to combine scraping and many API\'s. It quickly became too much for one person in 7 days. So, After 3 starts on trying to create a app with API for the solar system. I was 4 days in. I started to get worried that I wasn\'t going to be able to finish it time. I decided it was time to find another API and a different topic.
    
    I found another API that had amazing documentation and seemed to be simple enough to create something awesome in only 3 days remaining. The first day of the API was going good going through the documentation and creating an API key and API secret. After creating these I was supposed to use them to get a token using a curl command. I was unable to get the token, because of a 401 error. A 401 error is an error that states you API key and secret maybe wrong or your using an expired url. So, I got my lead involved on trying to solve the issues. After, I had exhausted google and the documentation. She was unable to find a reason that it wasn\'t working either. She then got another lead involved and all of us spent an hour in a zoom call trying to determine what was wrong. Meanwhile, I was waiting on a response for the developers for the API that I had sent earlier that day. I didn\'t know if I was going to be able to get a response from them in time to continue the project. So, once again. After a whole day of trying to get a token. I knew I had to find yet another topic and another API. 
    
    update: PetFinder API  I finally got a response back from the API developers and we were able to fix the issue. In my spare time I will finish this project. It is a really good API. Don\'t use the curly braces { } in the curl command they are ment to be place holders. Reach out to the developers of the API their wonderful and very helpful, if you use this API.
    
    So, I then found a API on the Game of Thrones and this is where I start to see a glimmer of hope again. It was a simple API that listed characters, information on those characters and the different houses. I proceeded in starting over once again. I only had 2 days left at this point. After, creating files and doing my research and learning how to fix so many issues in such a short period of time. I was able to fully create a working app in a day. 
    
    Some of the issues I had was not being able to find a good enough API til the end. Github did not want to let me link my files and my github. Every API I choose did not like the gem bundler install. Here is the beginning code for my GOT app.
    
    class API
    def self.create_characters #goes out and gets the information from the API response = RestClient.get(\'https://anapioficeandfire.com/api/characters?page=3&pageSize=25\') # binding.pry #returns that information in a parsed hash sy got_hash = JSON.parse(response.body, symbolize_names:true) #selects the main key in the hash # char_array = got_hash[:name] #then iterates through the hash and returns the elements got_hash.each do | character | url = character[:url] name = character[:name] CHARACTERS.new(name, url) #binding.pry true end #binding.pry end
    
    #binding.pry
    
    def self.character_list(character) response = RestClient.get(character.url) char_hash = JSON.parse(response.body, symbolize_names:true) # character.name = char_hash[:name] # binding.pry character.gender = char_hash[:gender] character.culture = char_hash[:culture] character.born = char_hash[:born] character.titles = char_hash[:titles] character.aliases = char_hash[:aliases] # binding.pry end
    
    def self.create_houses #goes out and gets the information from the API response = RestClient.get(\'https://anapioficeandfire.com/api/houses?pageSize=25\') #returns that information in a parsed hash, symbolize turns all the keys a different color for easier readability house_hash = JSON.parse(response.body, symbolize_names:true) #selects the main key in the hash # house_array = house_hash[:name] #then iterates through the hash and returns the elements
    
    #it does not like the collect key word, Try to find a fix in the morning after a break. house_hash.each do |realm| url = realm[:url] name = realm[:name] HOUSES.new(name, url) end #binding.pry end 
    
    It includes some of the comments that I made while creating the app and shows some insight on how I was able to fix some of the bugs I had with the program. 
    
    If you make changes in you github, say something comes to you and you know the fix but dont have your computer but you have you phone and can get to github. You can make changes just remember to do a git pull when you get back to you computer if not it can cause merge issues. Then you have to merge using the working tree. Then do another git commit -m and git push after you have merged the files.
    
    Since, I started 6.times. I have six 30 minute long coding videos. 
    
    What I learned during this process is always believe in your self. Never be afraid to ask for help. 
    puts "SAY I DONT KNOW IF YOU DON\'T KNOW"
    Trial and error is an amazing way to learn new things. keep track of the things you have tried. You can clean up your code later. Know  that your never done refactoring because everything can change and be updated.
    
    Thank you for reading. I appreciate any feedback. On the blog post or the code. Here to keep growing and learning with everyday. Good luck with your journey\'s everyone.
    '
  },
  {
    title: 'Sinatra with a touch of Rails',
    content: 'Hello,

    I created an Web Application for a veternarians office with many vets who have many owners who have many pets. I started off by having four models and a controller for Owners, Vets, Users and Pets application with Sessions. It vary quickly got to be very confusing as to what belong to what. So, I simplified to only having to models one for Users and one for Pets. Users alias vets or owners by using foreign_keys in the models of the application. Which made the relationship a little less complex. My models are listed below:
    
    class Pet < ActiveRecord::Base
         belongs_to :vet, class_name: "User" 
         belongs_to :owner, class_name: "User"
    end
    
    class User < ActiveRecord::Base
      
      has_many :vets, foreign_key: "vet_id", class_name: "Pet"
      has_many :pets, through: :vets, source: :vet
      has_many :owners, foreign_key: "owner_id", class_name: "Pet"
      has_many :pets, through: :owners, source: :owner
      
      has_secure_password
    
      validates :username, :email, presence: true
      validates :username, uniqueness: true
    
      validates_length_of :password, minimum: 8, if: Proc.new { | user | user.password.present? }
    end
    Both models inherit from ActiveRecord:: Base. They have a Has_many through: relationships with a source: :attribute. The has secure password and validations comes from ActiveRecord but require bcrypt to be able to use the validations. They encrypt the passwords through a salted hash. Validates checks to make sure the username and email are present and the username is unique. So that only one user can be assigned to each email.
    
    Then the validates_length_of checks to make sure the password is a minimum of 8 characters long, you can also use maximum and other verification actions. The hardest part about using a self join in the sinatra project was iterating through each pet for each owner. It took some serious tinkering and trial and error to find the right combination and right migrations to achieve the connection. I will be using this same model in my rails project and adding onto it.
    
    I want to add more features to my application that allows the users, (i.e. owners or vets) to be able to send messages back and forth and update medications or/and medical concerns. Set appointments change and cancel appointments. You would be able to select what vet office you would like to attend or did attend. Also, be able to put in perscription refills and many other features.
    
    Using self join has been a challenge that I have throughly enjoyed figuring out all the little pieces that make it connect. The Odin Project was a great resource that helped to figure out the relations between the two models. Rake console is an amazing tool to help test code, then find what it does and returns. Having multiple terminals open is awesome but can be a bit frustrating when you forget that one has a pry open and nothing will work and you can\'t figure out why. Then, you have already changed code and done other things to see if that will get it to work. Then, close out of pry to find out that it worked all along.
    
    To wrap it up, this project has been an absolute awesome experience. It had many challenges and many very rewarding aspects of discovering the many different ways there is to create the same things. What do you prefer is the better question when it comes to code. Everyone has there own little way of doing things. Some prefer the longer route others, then some prefer to find the quickest way possible for doing things. Even though they both end at the same goal they have the potential of both needing debugging, the tatics required to debug both are also many different ways as well.
    
    I hope this gave some insight into the process and you find something useful here. Thank you for taking the time to read.'
  },
  {
    title: 'Hello Rails, Half Way Point!',
    content: 'Hello, What were some of the struggles with creating this project? Some of the major accomplishments? How much harder was it to create the rails project than Sinatra?

    Sinatra was complicated trying to use a self join. When I switched it over to rails it made things a lot easier because of how rails takes charge and knows that things are supposed to be ralated.
    
    Using partials is an awesome way to have lots of code in multiple places but you only had to write it once. the render file name.
    
    I used bootstrap and bootswatch with popper.js to create my css basic styling. if you have a basic understanding of how html, css, and javascript work. Bootstrap is an amazing tool to get css up and running quickly with a little google action.
    
    I created my own validations for the models in this project. I have set custom validations for my nested animal attributes for my users. My relationships are as follows.
    
    **Animal**
      has_many :animal_companies
      has_many :companies, through: :animal_companies
    
      validates_presence_of :name, :gender, :species
    
      belongs_to :user
    
    **AnimalCompanies**
    belongs_to :animal
    belongs_to :company
    
    **Company**
    has_many :animal_companies
    has_many :animals, through: :animal_companies
    
    **User**
    has_many :owners, class_name: "User", foreign_key: "vet_id"
      belongs_to :vet, class_name: "User", optional: true
     
      has_many :animals, dependent: :destroy
    
      accepts_nested_attributes_for :animals, reject_if: proc { |attributes| attributes[\'name\'].blank? || attributes[\'gender\'].blank? || attributes[\'species\'].blank?}
    
      has_secure_password
    
      validates :username, :email, presence: true, uniqueness: true
      validates_length_of :password, minimum: 8, if: Proc.new { | user | user.password.present? }

    This project has been the most fun to create so far, because it really shows how all the pieces fit together. It has been a little challenging try to figure out how everything transfer over to fully rails. Sinatra was more complicated in my opinion by itself. Routes are simple to figure out. Resources generate the routes for you unless you need to specify a certain route. Creating nested routes make linking different pages together much easier. The hardest part about this project has been omniauth. Omniauth once figured out is amazing it basically allows for the user to be able to sign in using other accounts such as google, facebook, github, and many others. Your gem file needs to require omniauth. then your app secret and keys need to be kept in a .env file and referenced in your config initializer file. Then you create the link on the pages you want it to be located or in a layout file with conditions for if the user is logged in or not. Which helps to keep your code DRY. DRY stands for DON\'T REPEAT YOURSELF. This has been an amazing experience going through bootcamp and learning as much as I have there is still a long road ahead to become a professional engineer. With everyday I gain new knowledge and get one step closer to the goals I ahve set. I have made a lot of resources for learning new things and people to grow with and learn from. This is the halfway point. I can\'t believe I have already came this far and so excited for everything that is too come.'
  },
  {
    title: 'Have a Happy Holiday JS',
    content: 'Hello, My name is Amy Newland.

    I have completed one more step towards my goals of becoming a Software Enginner. This blog post is about my Rails with JavaScript Project. I create an application for children. It the holiday season and many kids are a little down so to try and spread some cheer for the holiday season. I created an app that allows children to send Santa their Wish. Once their wish has been created or made Santa will delete their Wish. I have had an amazing time created this project. It has been fun, exciting and challenging.
    
    JavaScript is amazing in so many ways. There is no one right way to write JavaScript. Theres definitely a few wrong ways. I enjoyed that there was little requirements for this project, it really gave me the opportunity to explore the language and test different ways of writing JS. So, I could find my own path in the language. The curriculum was a rough path of material to get through. None the less. I have succeed in taking the first steps to learning another new language. I am excited about being near the end of the course and getting ready to start my new career.
    
    I may not be the best at creating an application from scratch, I have definitely learned a lot and ready to see what new things I will be learning everyday. I enjoy that the career path is so wide spread there is aalways something new to learn and enhance your skills as a person and a developer.
    
    Well on to more about my project. With the blog I am going to give a simple breakdown of beginning to never perfected. There is always something you can add or change. No application is truely complete or done.
    
    For this project., the first steps is to setup up the files. You want to create a main directory. with in that directory is to folders. One is for the backend (your rails side of the application). The other is for your frontend (the javascript, html, css side of the application).
    
    When creating the front end to start you want to add a README.md file so when you link it to github you will be able connect and push the file. Here is a link to some information about linking the two if you need a reminder or some help. https://kbroman.org/github_tutorial/pages/init.html I did not write this information. It was just something I found useful when starting out.
    
    The next step is to setup your rails side of the application useing rails new project_name and any flags you might want to pass in I used –api –no-test-framework. I used the –api flag because I didn\'t want rails creating all of the views and excess code that wasn\'t going to be used with this project. Then, after you create the new application. You set up the models and controller and migrations. Either by hand or you can use Scaffold. Scaffolding is awesome for a quick setup if you understand how everything is connected and put together. If you are still a little hazy on how everything is working I recommend setting up the application by hand. Rails new will automatically do git init for you to create a new git repository for you. Unlike when you created your frontend you had to manually do git init.
    
    The next steps would be to go to git hub and generate a repository for your front end and run the commands provided. Then, create a github reposiitory for your backend. After, you have both repositories link to your files. I recommend putting a link in your front end README for your backend and vice versa. These steps should take about 30 minutes or less. After you have completed all of this. Your all set to start building your version of a wonderful application.
    
    BEWARNED be paitent with yourself. When you are learning JavaScript. Why well because JavaScript can be a complicated language because there is so many different way to do things.
    
    After I got all of this completed. I started adjusting my migrations for the information I wanted to take in I created two models. One for lists and one for list_items. Wish_List has_many Wish_Items. My list consists on the name delivery_date and the items count. These can all be adjusted as desired. My items consist of a name color height weight description price and a link to the photo or where it can be got. After my migrations were set as how I wanted to begin creating my application.
    
    Its then time to start adding your JS to your file your index.html can have elements in it to help make things a little less confusing if your starting out. But, It is not neccessary other than a BASIC html setup. Start by setting your URLS to variables to make it easier for fetchs instead of having to write the whole url every time. Then, start adding a single element at a time. I do not recommend setting all of your elements at once because it will make things confusing and out of order and will make it more challenging to have things appear in the order that you would like.
    
    Once you have you basic html and have set your variables and created your first element start creating your fetch requests to the backend of the application to retrieve your data. and trying to have it appear on the element you created for it. Oh yeah, I forgot one important thing if you would like to have data to test things in your application. You will need to create your seed data as well. But, again its not absolutely neccessary. It can also take quite some time to create your seed data depending on your objects and information you want to take in or display.
    
    Once you are getting the information from the backend you are ready to start making it appear to the DOM (DOCUMENT OBJECT MODEL). For the JS project you will need to create at least 3 of the CRUD actions using fetch requests. I used READ CREATE and DELETE. As you are going through your project and building it feature by feature. I recommend that you do your css as you go along. Use id\'s on everything you can to make grabbing pieces of information and setting your css as simple as possible.
    
    I am going to display some of my fetch requests here because that maybe some help to see how they should be done if you need help. But, again there is many ways to do eveything in JS.
    
  
    static readList() { fetch(\'http://localhost:3000/wish_lists\') .then(resp => resp.json()) .then(wish_lists => { wish_lists.forEach(wish_list => { const { id, title, item_count, delivery_date } = wish_list new WishList(id, title, item_count, delivery_date ) }) }) }
    
    static createList(e) { e.preventDefault() let list = { \'title\': e.target.title.value, }; fetch(WISHLIST_URL, { method: \'POST\', headers: { \'Content-Type\': \'application/json\' }, body: JSON.stringify(list) }) .then(resp => resp.json()) .then(wish_lists => { const { id, title} = wish_lists new WishList(id, title ) renderNestedForm(id, title) document.getElementById(\'nested-form\').addEventListener(\'submit\', API.createItems ) document.getElementById(\'nested-form\').reset() }) } 
    
    The above fetch requests the first one reads my information the second one takes it in and sets the values to a variable and tells the fetch request that it is a post fetch destructures the attributes that are coming in, creates a new object for the information taken in then renders the form to take in the information and after the form is submitted it will clear the form of the information provided.
    
    I hope this helped to get an Idea of how to begin your Rails With JavaScript Project. I wish every a great Holiday Season. Good luck to everyone starting a new journey soon. 
    '
  }
])

Comment.create([
  {
    name: 'Great Job',
    content: 'Thank you for sharing.',
    post_id: 1
  },
  {
    name: 'Nice Work',
    content: 'This was helpful.',
    post_id: 2
  },
  {
    name: 'Nice Job',
    content: 'Thank you for sharing. This gave me inspiration to continue even when it feels rough.',
    post_id: 3
  },
  {
    name: 'Hello',
    content: 'This was very helpful.',
    post_id: 4
  },
  {
    name: 'Santa',
    content: 'Great work in Javascript.',
    post_id: 6
  },
  {
    name: 'Hello Rails',
    content: 'This was very helpful.',
    post_id: 5
  }
])