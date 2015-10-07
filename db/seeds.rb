require 'date'

User.delete_all
Comment.delete_all
Review.delete_all
Rating.delete_all
Film.delete_all
Genre.delete_all
FilmGenre.delete_all

review_options =
  ["This movie was great! Very exciting and thought-provoking.",
    "I fell asleep in the first five minutes.",
    "I was only there for the popcorn. I hate movies.",
    "I normally love the actor who plays the main character, but was disappointed in their performance here.",
    "Excellent screenplay and fabulous direction - this film is a triumph!",
    "Basically my new favorite movie. It's awesome!",
    "My girlfriend dragged me to see this when I didn't want to go, but as usual, she was totally right and I loved it. Great film!",
    "What happened to this producer? Their work used to be so good! Save your money and skip this film.",
    "Three thumbs way, way up! This film does so much for the triple-thumbed community. We're out of the shadows and enthusiastically expressing approval all over the place!",
    "I LOVE Charlize Theron. I'm a randomly-generated review, so I don't know whether or not she's actually in this movie, but in any case, she should be.",
    "This movie rocked my socks off. All the cool people should def go see it.",
    "Thrilled? Moved? Inspired? ENTERTAINED??! Why yes, yes I was."
  ]

rating_options = ["good", "bad"]

comment_options =
  ["I loved this movie. Thanks for the recommendation!",
    "Omg like totally! You are sooooo right.",
    "Ugh, don't know about you but I saw this movie too and thought it sucked.",
    "I agree! So glad others understand.",
    "I HAVE AN OPINION THAT IS DIFFERENT FROM YOURS AND MY OPINION IS THE RIGHT ONE. YOUR DISAGREEMENT MAKES ME IRATE AND ALSO ENTITLED TO HARM YOU. p.s. Ur cabbage and I know where you live. {incoherent threats}!1!11!!!!!1",
    "I go to internet comments sections seeking validation and connection. I am frequently disappointed.",
    "Gee whiz! This review is spot-on. You're a great reviewer!",
    "Yeah for reals, this movie. I don't know what to say.",
    "You're wrong about this film. Like, completely off-the-mark wrong. And I have neither the time nor the energy to educate you as to why.",
    "Leonardo DiCaprio, AMIRITE??",
    "I wish I had read this review before I saw the movie. Could've saved some time and $$.",
    "Lol the genre assignment. It's like these people live under a rock or maybe go to some weird bootcamp for nerds who never see a movie. Yikes.",
    "Go see Mad Max: Fury Road. Just do it.",
    "Always enjoy your reviews. I think we have all the same tastes in movies!",
    "Damn, who writes these reviews? I hope they don't get paid for this trash. Yo 'reviewer', go back to Yelp!"
  ]

users = User.create!([
  {username: "ryan", email: "ryan@email.com", password: "password", trusted: "untrusted", admin: false},
  {username: "nailah", email: "nailah@email.com", password: "password", trusted: "untrusted", admin: false},
  {username: "rodica", email: "rodica@email.com", password: "password", trusted: "untrusted", admin: false},
  {username: "greg", email: "greg@email.com", password: "password", trusted: "untrusted", admin: false},
  {username: "larissa", email: "larissa@email.com", password: "password", trusted: "untrusted", admin: false},
  {username: "lucas", email: "lucas@email.com", password: "password", trusted: "untrusted", admin: false},
  {username: "cicadavid", email: "cicadavid@nytimes.com", password: "password", trusted: "trusted", admin: false},
  {username: "lasalle", email: "lasalle@chicagoreader.com", password: "password", trusted: "trusted", admin: false},
  {username: "felicia", email: "felicia@suntimes.com", password: "password", trusted: "trusted", admin: false},
  {username: "jackson", email: "jackson@chicagotribune.com", password: "password", trusted: "trusted", admin: false}
  ])

films = Film.create!([
  {title: "Trainwreck", release_date: Date.new(2015,7,17), description: "Having thought that monogamy was never possible, a commitment-phobic career woman may have to face her fears when she meets a good guy. Director: Judd Apatow; Writer: Amy Schumer; Stars: Amy Schumer, Bill Hader, Brie Larson", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTQ4MjgwNTMyOV5BMl5BanBnXkFtZTgwMTc1MjI0NDE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTQ4MjgwNTMyOV5BMl5BanBnXkFtZTgwMTc1MjI0NDE@._V1_SX214_AL_.jpg"},

  {title: "The Martian", release_date: Date.new(2015,10,2), description: "During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive. Director: Ridley Scott; Writers: Drew Goddard (screenplay), Andy Weir (book); Stars: Matt Damon, Jessica Chastain, Kristen Wiig", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_SY317_CR0,0,214,317_AL_.jpg"},

  {title: "Straight Outta Compton", release_date: Date.new(2015,8,14), description: "The group NWA emerges from the mean streets of Compton in Los Angeles, California, in the mid-1980s and revolutionizes Hip Hop culture with their music and tales about life in the hood. Director: F. Gary Gray; Writers: Jonathan Herman (screenplay), Andrea Berloff (screenplay), and more; Stars: O'Shea Jackson Jr., Corey Hawkins, Jason Mitchell", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTA5MzkyMzIxNjJeQTJeQWpwZ15BbWU4MDU0MDk0OTUx._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTA5MzkyMzIxNjJeQTJeQWpwZ15BbWU4MDU0MDk0OTUx._V1_SX214_AL_.jpg"},

  {title: "Mad Max: Fury Road", release_date: Date.new(2015,5,15), description: "A woman rebels against a tyrannical ruler in post apocalyptic Australia in search for her homeland with the help of a group of female prisoners, a psychotic worshiper, and a drifter named Max. Director: George Miller; Writers: George Miller, Brendan McCarthy, and more; Stars: Tom Hardy, Charlize Theron, Nicholas Hoult", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTUyMTE0ODcxNF5BMl5BanBnXkFtZTgwODE4NDQzNTE@._V1_UY98_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTUyMTE0ODcxNF5BMl5BanBnXkFtZTgwODE4NDQzNTE@._V1_SY317_CR2,0,214,317_AL_.jpg"},

  {title: "Steve Jobs", release_date: Date.new(2015,10,23), description: "Set backstage at three iconic product launches and ending in 1998 with the unveiling of the iMac, Steve Jobs takes us behind the scenes of the digital revolution to paint a portrait of the man at its epicenter. Director: Danny Boyle; Writers: Aaron Sorkin (screenplay), Walter Isaacson (book); Stars: Michael Fassbender, Kate Winslet, Seth Rogen", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMjE0NTA2MTEwOV5BMl5BanBnXkFtZTgwNzg4NzU2NjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMjE0NTA2MTEwOV5BMl5BanBnXkFtZTgwNzg4NzU2NjE@._V1_SX214_AL_.jpg"},

  {title: "This Changes Everything", release_date: Date.new(2015,10,16), description: "A look at seven communities around the world with the proposition that we can seize the crisis of climate change to transform our failed economic system into something radically better. Director: Avi Lewis; Writer: Naomi Klein", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTk3NDMxNzczOV5BMl5BanBnXkFtZTgwNjYzOTE3NjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTk3NDMxNzczOV5BMl5BanBnXkFtZTgwNjYzOTE3NjE@._V1_SX214_AL_.jpg"},

  {title: "Suffragette", release_date: Date.new(2015,10,23), description: "The foot soldiers of the early feminist movement, women who were forced underground to pursue a dangerous game of cat and mouse with an increasingly brutal State. Director: Sarah Gavron; Writer: Abi Morgan; Stars: Helena Bonham Carter, Carey Mulligan, Meryl Streep", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMjA2NDYxOTI1MV5BMl5BanBnXkFtZTgwOTgyMjU3NjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMjA2NDYxOTI1MV5BMl5BanBnXkFtZTgwOTgyMjU3NjE@._V1_SX214_AL_.jpg"},

  {title: "The Hunger Games: Mockingjay - Part 2", release_date: Date.new(2015,11,20), description: "After being symbolized as the Mockingjay, Katniss Everdeen and District 13 engage in an all-out revolution against the autocratic Capitol. Director: Francis Lawrence; Writers: Peter Craig (screenplay), Danny Strong (screenplay), and more; Stars: Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth", thumb_url: "http://ia.media-imdb.com/images/M/MV5BNjQzNDI2NTU1Ml5BMl5BanBnXkFtZTgwNTAyMDQ5NjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BNjQzNDI2NTU1Ml5BMl5BanBnXkFtZTgwNTAyMDQ5NjE@._V1_SX214_AL_.jpg"},

  {title: "Inside Out", release_date: Date.new(2015,6,19), description: "After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school. Directors: Pete Docter, Ronnie Del Carmen; Writers: Pete Docter (original story), Ronnie Del Carmen (original story) (as Ronnie del Carmen), and more; Stars: Amy Poehler, Bill Hader, Lewis Black", thumb_url: "http://ia.media-imdb.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_SX214_AL_.jpg"},

  {title: "Selma", release_date: Date.new(2015,1,9), description: "A chronicle of Martin Luther King's campaign to secure equal voting rights via an epic march from Selma to Montgomery, Alabama in 1965. Director: Ava DuVernay; Writer: Paul Webb; Stars: David Oyelowo, Carmen Ejogo, Tim Roth", thumb_url: "http://ia.media-imdb.com/images/M/MV5BODMxNjAwODA2Ml5BMl5BanBnXkFtZTgwMzc0NjgzMzE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BODMxNjAwODA2Ml5BMl5BanBnXkFtZTgwMzc0NjgzMzE@._V1_SX214_AL_.jpg"},

  {title: "The Hobbit: The Battle of Five Armies", release_date: Date.new(2014,12,17), description: "Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness. Director: Peter Jackson; Writers: Fran Walsh (screenplay), Philippa Boyens (screenplay), and more; Stars: Ian McKellen, Martin Freeman, Richard Armitage", thumb_url: "http://ia.media-imdb.com/images/M/MV5BODAzMDgxMDc1MF5BMl5BanBnXkFtZTgwMTI0OTAzMjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BODAzMDgxMDc1MF5BMl5BanBnXkFtZTgwMTI0OTAzMjE@._V1_SX214_AL_.jpg"},

  {title: "The Revenant", release_date: Date.new(2016,1,8), description: "In the 1820s, a frontiersman, Hugh Glass, sets out on a path of vengeance against those who left him for dead after a bear mauling. Director: Alejandro González Iñárritu; Writers: Alejandro González Iñárritu (screenplay), Michael Punke (novel), and more; Stars: Tom Hardy, Leonardo DiCaprio, Will Poulter", thumb_url: "http://ia.media-imdb.com/images/M/MV5BOTIwMzA4OTAwMl5BMl5BanBnXkFtZTgwNDQ3MTkyNjE@._V1_UY98_CR42,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BOTIwMzA4OTAwMl5BMl5BanBnXkFtZTgwNDQ3MTkyNjE@._V1_SY317_CR139,0,214,317_AL_.jpg"},

  {title: "The Intern", release_date: Date.new(2015,9,25), description: "70-year-old widower Ben Whittaker has discovered that retirement isn't all it's cracked up to be. Seizing an opportunity to get back in the game, he becomes a senior intern at an online fashion site, founded and run by Jules Ostin. Director: Nancy Meyers; Writer: Nancy Meyers; Stars: Robert De Niro, Anne Hathaway, Rene Russo", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTUyNjE5NjI5OF5BMl5BanBnXkFtZTgwNzYzMzU3NjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTUyNjE5NjI5OF5BMl5BanBnXkFtZTgwNzYzMzU3NjE@._V1_SX214_AL_.jpg"},

  {title: "Black Mass", release_date: Date.new(2015,9,18), description: "The true story of Whitey Bulger, the brother of a state senator and the most infamous violent criminal in the history of South Boston, who became an FBI informant to take down a Mafia family invading his turf. Director: Scott Cooper; Writers: Mark Mallouk (screenplay), Jez Butterworth (screenplay), and more; Stars: Johnny Depp, Benedict Cumberbatch, Dakota Johnson", thumb_url: "http://ia.media-imdb.com/images/M/MV5BNzg0ODI3NDQxNF5BMl5BanBnXkFtZTgwMzgzNDA0NjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BNzg0ODI3NDQxNF5BMl5BanBnXkFtZTgwMzgzNDA0NjE@._V1_SX214_AL_.jpg"},

  {title: "No Country for Old Men", release_date: Date.new(2007,11,21), description: "Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande. Directors: Ethan Coen, Joel Coen; Writers: Joel Coen (screenplay), Ethan Coen (screenplay), and more; Stars: Tommy Lee Jones, Javier Bardem, Josh Brolin", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SY317_CR0,0,214,317_AL_.jpg"},

  {title: "Revolutionary Road", release_date: Date.new(2009,1,23), description: "A young couple living in a Connecticut suburb during the mid-1950s struggle to come to terms with their personal problems while trying to raise their two children. Director: Sam Mendes; Writers: Justin Haythe (screenplay), Richard Yates (novel); Stars: Leonardo DiCaprio, Kate Winslet, Christopher Fitzgerald", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTczNDgzMjczOV5BMl5BanBnXkFtZTcwOTU3MzMwMg@@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTczNDgzMjczOV5BMl5BanBnXkFtZTcwOTU3MzMwMg@@._V1_SX214_AL_.jpg"}
  ])

films.each do |film|
  rand(0..6).times do
    film.ratings.create!(:rater => users.sample, :content => rating_options.sample)
  end
end

genres = Genre.create!([
  {title: "drama", description: "this is intense."},
  {title: "comedy", description: "laugh out loud"},
  {title: "action", description: "hold onto your popcorn!"},
  {title: "children's", description: "fun for the whole family!"},
  {title: "biopic", description: "interesting films about interesting people with interesting lives"},
  {title: "documentary", description: "wow. you are SO aware."},
  {title: "historical drama", description: "strange and wonderful things that happened in the past"},
  {title: "sci-fi & fantasy", description: "the weird worlds that could be"}
  ])

film_genres = FilmGenre.create!([
  {:film => Film.find_by_title("Trainwreck"), :genre => Genre.find_by_title("comedy")},
  {:film => Film.find_by_title("The Martian"), :genre => Genre.find_by_title("action")},
  {:film => Film.find_by_title("The Martian"), :genre => Genre.find_by_title("drama")},
  {:film => Film.find_by_title("The Martian"), :genre => Genre.find_by_title("sci-fi & fantasy")},
  {:film => Film.find_by_title("Straight Outta Compton"), :genre => Genre.find_by_title("biopic")},
  {:film => Film.find_by_title("Straight Outta Compton"), :genre => Genre.find_by_title("drama")},
  {:film => Film.find_by_title("Mad Max: Fury Road"), :genre => Genre.find_by_title("action")},
  {:film => Film.find_by_title("Mad Max: Fury Road"), :genre => Genre.find_by_title("sci-fi & fantasy")},
  {:film => Film.find_by_title("Steve Jobs"), :genre => Genre.find_by_title("biopic")},
  {:film => Film.find_by_title("Steve Jobs"), :genre => Genre.find_by_title("drama")},
  {:film => Film.find_by_title("This Changes Everything"), :genre => Genre.find_by_title("documentary")},
  {:film => Film.find_by_title("Suffragette"), :genre => Genre.find_by_title("historical drama")},
  {:film => Film.find_by_title("The Hunger Games: Mockingjay - Part 2"), :genre => Genre.find_by_title("action")},
  {:film => Film.find_by_title("The Hunger Games: Mockingjay - Part 2"), :genre => Genre.find_by_title("sci-fi & fantasy")},
  {:film => Film.find_by_title("Inside Out"), :genre => Genre.find_by_title("children's")},
  {:film => Film.find_by_title("Selma"), :genre => Genre.find_by_title("historical drama")},
  {:film => Film.find_by_title("Selma"), :genre => Genre.find_by_title("biopic")},
  {:film => Film.find_by_title("The Hobbit: The Battle of Five Armies"), :genre => Genre.find_by_title("action")},
  {:film => Film.find_by_title("The Hobbit: The Battle of Five Armies"), :genre => Genre.find_by_title("sci-fi & fantasy")},
  {:film => Film.find_by_title("The Hobbit: The Battle of Five Armies"), :genre => Genre.find_by_title("children's")},
  {:film => Film.find_by_title("The Revenant"), :genre => Genre.find_by_title("action")},
  {:film => Film.find_by_title("The Revenant"), :genre => Genre.find_by_title("historical drama")},
  {:film => Film.find_by_title("The Intern"), :genre => Genre.find_by_title("comedy")},
  {:film => Film.find_by_title("Black Mass"), :genre => Genre.find_by_title("biopic")},
  {:film => Film.find_by_title("Black Mass"), :genre => Genre.find_by_title("drama")},
  {:film => Film.find_by_title("No Country for Old Men"), :genre => Genre.find_by_title("drama")},
  {:film => Film.find_by_title("Revolutionary Road"), :genre => Genre.find_by_title("drama")}
  ])

reviews = 65.times.map do
  Review.create!(:reviewer => users.sample, :film => films.sample, :content => review_options.sample)
end

reviews.each do |review|
  rand(0..6).times do
    review.ratings.create!(:rater => users.sample, :content => rating_options.sample)
  end
end

comments = 260.times.map do
  Comment.create!(:review => reviews.sample, :commenter => users.sample, :content => comment_options.sample)
end

