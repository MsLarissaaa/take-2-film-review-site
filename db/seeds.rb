require 'date'

User.delete_all
Comment.delete_all
Review.delete_all
Rating.delete_all
Film.delete_all
Genre.delete_all


users = User.create!([
  {username: "bob", email: "bob@email.com", password: "password",
            trusted: "untrusted", admin: false},
  {username: "mary", email: "mary@email.com", password: "password",
            trusted: "untrusted", admin: false}
  ])

reviews = Review.create!([
  {:reviewer_id => 1, film_id: 1, content: "i fell asleep in the first five minutes."},
  {:reviewer_id => 2, film_id: 2, content: "i was only there for the popcorn. i hate movies"}
  ])

reviews.each do |review|
  2.times do
    review.ratings.create!(:rater => users.sample, :content => "bad")
  end
end

comments = Comment.create!([
  {review_id: 1, :commenter => users.sample, content: "oh my god, i loved it!"},
  {review_id: 2, :commenter => users.sample, content: "i couldn't stop crying!"}
  ])

films = Film.create!([
  {title: "Trainwreck", release_date: Date.new(2015,7,17), description: "Having thought that monogamy was never possible, a commitment-phobic career woman may have to face her fears when she meets a good guy. Director: Judd Apatow; Writer: Amy Schumer; Stars: Amy Schumer, Bill Hader, Brie Larson", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTQ4MjgwNTMyOV5BMl5BanBnXkFtZTgwMTc1MjI0NDE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTQ4MjgwNTMyOV5BMl5BanBnXkFtZTgwMTc1MjI0NDE@._V1_SX214_AL_.jpg"},

  {title: "The Martian", release_date: Date.new(2015,10,2), description: "During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive. Director: Ridley Scott; Writers: Drew Goddard (screenplay), Andy Weir (book); Stars: Matt Damon, Jessica Chastain, Kristen Wiig", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_SY317_CR0,0,214,317_AL_.jpg"},

  {title: "Straight Outta Compton", release_date: Date.new(2015,8,14), description: "The group NWA emerges from the mean streets of Compton in Los Angeles, California, in the mid-1980s and revolutionizes Hip Hop culture with their music and tales about life in the hood. Director: F. Gary Gray; Writers: Jonathan Herman (screenplay), Andrea Berloff (screenplay), and more; Stars: O'Shea Jackson Jr., Corey Hawkins, Jason Mitchell", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTA5MzkyMzIxNjJeQTJeQWpwZ15BbWU4MDU0MDk0OTUx._V1_UX67_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTA5MzkyMzIxNjJeQTJeQWpwZ15BbWU4MDU0MDk0OTUx._V1_SX214_AL_.jpg"},

  {title: "Mad Max: Fury Road", release_date: Date.new(2015,5,15), description: "A woman rebels against a tyrannical ruler in post apocalyptic Australia in search for her homeland with the help of a group of female prisoners, a psychotic worshiper, and a drifter named Max. Director: George Miller; Writers: George Miller, Brendan McCarthy, and more; Stars: Tom Hardy, Charlize Theron, Nicholas Hoult", thumb_url: "http://ia.media-imdb.com/images/M/MV5BMTUyMTE0ODcxNF5BMl5BanBnXkFtZTgwODE4NDQzNTE@._V1_UY98_CR0,0,67,98_AL_.jpg", large_url: "http://ia.media-imdb.com/images/M/MV5BMTUyMTE0ODcxNF5BMl5BanBnXkFtZTgwODE4NDQzNTE@._V1_SY317_CR2,0,214,317_AL_.jpg"}

  ])

films.each do |film|
  2.times do
    film.ratings.create!(:rater => users.sample, :content => "good")
  end
end

Genre.create!([
  {title: "drama", description: "go get the tissues"},
  {title: "comedy", description: "laugh and laugh"}
  ])

FilmGenre.create!([
  {film_id: 1, genre_id: 1},
  {film_id: 2, genre_id: 2}
  ])

