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
  {title: "gone with the wind", release_date: Date.new(1933,6,6), description: "a sad tale of slavery and the south", thumb_url: "something.com"},
  {title: "forest gump", release_date: Date.new(1995,4,19), description: "run for your life", thumb_url: "something.com"}
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

